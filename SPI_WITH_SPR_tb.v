module SPI_WITH_SPR_tb();

reg clk,rstn,SS_n,MOSI;
wire MISO;

SPI_WITH_SPR #(256,8)DUT(clk,rstn,MISO,MOSI,SS_n);

initial begin
$readmemh("mem.dat",DUT.RAM.MEM);
end 

initial begin
    clk=0;
    forever begin
        #10 clk=~clk;
    end
end

initial begin
//reset 
    rstn=0;
    MOSI=0;
    SS_n=1;
    repeat(20) begin
    @(negedge clk);
    if(MOSI!=0) begin
        $display("Error in reset");
        $stop;
    end
    end
//IDLE test 
    rstn=1;
    repeat(10) begin
        @(negedge clk);
        if(MOSI!=0) begin
        $display("Error in IDLE");
        $stop;
    end
    end
//write add test 
    SS_n=0;
    @(negedge clk);//now we are at the CHk_CMD
    MOSI=0;
    @(negedge clk);//now we are at the WRITE
    MOSI=0;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);//now we sent 2 zero for the ram to write address
    repeat(8) begin //random address 
        MOSI=$random;
        @(negedge clk);
    end
    SS_n=1;//end communication ,now the ram should have taken this value for the address
    @(negedge clk);
    SS_n=0;//start communication
    @(negedge clk);//at CHK_CMD
     MOSI=0;//go to write state
    @(negedge clk);//at write
    MOSI=0;
    @(negedge clk);
    MOSI=1;//write data 
    @(negedge clk); 
    repeat(8) begin //write this random data
        MOSI=$random;
        @(negedge clk);
    end
    SS_n=1;//end comminication
    @(negedge clk);
    SS_n=0;//start communication
    @(negedge clk);//at check command
    MOSI=1;
    @(negedge clk);//at Read command 
    MOSI=1;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);//we sent 10 for the ram to read add of the following
        MOSI=0;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=0;
        @(negedge clk);// the address is 01111110 which is 7E in hexa which was the previous random add
    SS_n=1;//end communication
    @(negedge clk);
    SS_n=0;
    @(negedge clk);
    MOSI=1;//read
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    MOSI=1;
    @(negedge clk); //read data at address 7E which is the one we wrote in the write state
    repeat(8) begin
        MOSI=$random;
        @(negedge clk); //dummy bits
    end
    @(negedge clk);
    repeat(8) @(negedge clk);//data out
    SS_n=1;//end communication
    @(negedge clk);
    
//////////////repeat the same process again to ensure every thing is right every time///////////////

    SS_n=0;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);
    repeat(8) begin
        MOSI=$random;
        @(negedge clk);
    end
    SS_n=1;
    @(negedge clk);
    SS_n=0;
    @(negedge clk);
     MOSI=0;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);
    MOSI=1;
    @(negedge clk); 
    repeat(8) begin
        MOSI=$random;
        @(negedge clk);
    end
    SS_n=1;
    @(negedge clk);
    SS_n=0;
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);
        MOSI=0;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=1;
        @(negedge clk);
        MOSI=0;
        @(negedge clk);
    SS_n=1;
    @(negedge clk);
    SS_n=0;
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    repeat(8) begin
        MOSI=$random;
        @(negedge clk);
    end
    @(negedge clk);
    repeat(8) @(negedge clk);
    SS_n=1;
    @(negedge clk);
$stop;
end
endmodule