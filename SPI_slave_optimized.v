module SPI_slave_op(MOSI,MISO,clk,rstn,rx_data,tx_data,rx_valid,tx_valid,SS_n);

//our state encoding;
parameter IDLE=3'b000;
parameter CHK_CMD=3'b001;
parameter WRITE =3'b010;
parameter READ_ADD=3'b011;
parameter READ_DATA=3'b100;


//SPI slave ports
input MOSI,clk,rstn,tx_valid,SS_n;
input [7:0]tx_data;
output reg MISO,rx_valid;
output reg [9:0]rx_data;

(*fsm_encoding="sequential"*)
reg [2:0]ns,cs;//next and current state

//internal signals 
wire [2:0]count;
wire [3:0]count_10;
reg Read_add_data_inx;

//counters 
down_counter #(10,4) down_counter_10(clk,rstn && cs!=CHK_CMD ,cs!=IDLE,count_10);//counter counts from 9 to 0 ,10 states ,10 bits
down_counter #(8,3)tx_to_MISO(clk,rstn&& (cs!=CHK_CMD),(cs==READ_DATA && tx_valid),count);

//next state logic
always @(*) begin
    case (cs)
        IDLE:begin
            if(SS_n) ns=IDLE;
            else begin
                ns=CHK_CMD;
            end
        end
        CHK_CMD:begin
            if(SS_n) ns=IDLE;
            else begin
                if(MOSI) begin
                    if(!Read_add_data_inx) begin//read addr
                        ns=READ_ADD;
                    end
                    else if (Read_add_data_inx) begin
                        ns=READ_DATA;
                    end
                end
                else begin
                    ns=WRITE;
                end
            end
        end
        WRITE:begin
            if(SS_n) ns=IDLE;
            else begin
                ns=WRITE;
            end
        end
        READ_ADD:begin
            if(SS_n) ns=IDLE;
            else begin
                ns=READ_ADD;
            end 
        end
        READ_DATA: begin
            if(SS_n) ns=IDLE;
            else begin
                ns=READ_DATA;
            end
        end
    endcase
end

//memory logic
always @(posedge clk) begin
    if (!rstn) begin
        cs<=3'b000;
    end
    else begin
        cs<=ns;
    end
end

//output logic 
always @(posedge clk) begin
    if(!rstn) begin
        rx_data<=8'b0;
        rx_valid<=0;
        MISO<=0;
        Read_add_data_inx<=0;
    end
    else begin
        case(cs)
            WRITE: begin
                rx_data[count_10]<=MOSI;
                MISO<=0;
                if (count_10==4'b0) begin
                   rx_valid<=1; 
                end
                else begin
                        rx_valid<=0;
                    end
            end
            READ_ADD: begin
                rx_data[count_10]<=MOSI;
                MISO<=0;
                if (count_10==4'b0) begin
                   rx_valid<=1;
                    Read_add_data_inx<=1;
                end
                else begin
                        rx_valid<=0;
                    end
            end
            READ_DATA: begin
                if(!tx_valid) begin
                    rx_data[count_10]<=MOSI; 
                    MISO<=0;
                    if (count_10==4'b0) begin
                       rx_valid<=1; 
                       Read_add_data_inx<=0;
                    end
                    else begin
                        rx_valid<=0;
                    end
                end
                else begin 
                    MISO<=tx_data[count]; // getting the data out of the SPI through the MISO
                    rx_valid<=0;
                    rx_data<='b0;
                end
            end
            CHK_CMD :begin
                rx_valid<=0;
                rx_data<=0;
                MISO<=0;
            end
            IDLE: begin
                rx_valid<=0; // reset all values to start communication again
                rx_data<=0;
                MISO<=0; 
            end
            default :begin
                rx_valid<=0;
                rx_data<=0;
                MISO<=0;
            end
        endcase
    end
end
endmodule
