// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Aug  2 14:31:52 2025
// Host        : DESKTOP-77J5RHU running 64-bit major release  (build 9200)
// Command     : write_verilog D:/Digital_Diploma/Project_2/project2_final.v
// Design      : SPI_WITH_SPR
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_SIZE = "8" *) (* MEM_DEPTH = "256" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_WITH_SPR
   (clk,
    rstn,
    MISO,
    MOSI,
    SS_n);
  input clk;
  input rstn;
  output MISO;
  input MOSI;
  input SS_n;

  wire MEM;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire RAM_n_2;
  wire RAM_n_3;
  wire RAM_n_4;
  wire SPI_n_0;
  wire SPI_n_11;
  wire SPI_n_14;
  wire SPI_n_15;
  wire SPI_n_16;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]count;
  wire rstn;
  wire rstn_IBUF;
  wire [7:0]rx_data;
  wire sig;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  SPR RAM
       (.D(rx_data),
        .E(SPI_n_11),
        .MISO_reg(RAM_n_2),
        .MISO_reg_0(RAM_n_3),
        .WEA(MEM),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .count(count),
        .rstn(SPI_n_0),
        .rstn_IBUF(rstn_IBUF),
        .\rx_data_reg[8] (SPI_n_16),
        .sig(sig),
        .sig_reg_0(SPI_n_15),
        .tx_valid(tx_valid),
        .tx_valid_reg_0(RAM_n_4),
        .tx_valid_reg_1(SPI_n_14));
  SPI_slave_op SPI
       (.D(rx_data),
        .E(SPI_n_11),
        .MEM_reg(SPI_n_16),
        .MEM_reg_0(RAM_n_3),
        .MEM_reg_1(RAM_n_2),
        .MISO_OBUF(MISO_OBUF),
        .MISO_reg_0(SPI_n_0),
        .MOSI_IBUF(MOSI_IBUF),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(MEM),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\count_reg[1] (count),
        .\count_reg[1]_0 (RAM_n_4),
        .rstn_IBUF(rstn_IBUF),
        .sig(sig),
        .sig_reg(SPI_n_15),
        .tx_valid(tx_valid),
        .tx_valid_reg(SPI_n_14));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rstn_IBUF_inst
       (.I(rstn),
        .O(rstn_IBUF));
endmodule

module SPI_slave_op
   (MISO_reg_0,
    MISO_OBUF,
    WEA,
    D,
    E,
    \count_reg[1] ,
    tx_valid_reg,
    sig_reg,
    MEM_reg,
    clk_IBUF_BUFG,
    tx_valid,
    MOSI_IBUF,
    SS_n_IBUF,
    rstn_IBUF,
    MEM_reg_0,
    MEM_reg_1,
    \count_reg[1]_0 ,
    sig);
  output MISO_reg_0;
  output MISO_OBUF;
  output [0:0]WEA;
  output [7:0]D;
  output [0:0]E;
  output [1:0]\count_reg[1] ;
  output tx_valid_reg;
  output sig_reg;
  output MEM_reg;
  input clk_IBUF_BUFG;
  input tx_valid;
  input MOSI_IBUF;
  input SS_n_IBUF;
  input rstn_IBUF;
  input MEM_reg_0;
  input MEM_reg_1;
  input \count_reg[1]_0 ;
  input sig;

  wire \<const1> ;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_ns_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[2]_i_2_n_0 ;
  wire GND_1;
  wire MEM_reg;
  wire MEM_reg_0;
  wire MEM_reg_1;
  wire MISO_OBUF;
  wire MISO_i_2_n_0;
  wire MISO_reg_0;
  wire MOSI_IBUF;
  wire Read_add_data_inx_reg_n_0;
  wire SS_n_IBUF;
  wire VCC_2;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  wire [1:0]\count_reg[1] ;
  wire \count_reg[1]_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire down_counter_10_n_0;
  wire down_counter_10_n_2;
  wire down_counter_10_n_3;
  wire down_counter_10_n_4;
  wire down_counter_10_n_5;
  wire down_counter_10_n_6;
  wire down_counter_10_n_7;
  wire down_counter_10_n_8;
  wire down_counter_10_n_9;
  wire [2:0]ns;
  wire p_0_in;
  wire rstn_IBUF;
  wire [9:8]rx_data;
  wire [9:9]rx_data1_in;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_5_n_0 ;
  wire rx_valid;
  wire sig;
  wire sig_reg;
  wire tx_to_MISO_n_0;
  wire tx_valid;
  wire tx_valid_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(rstn_IBUF),
        .O(MISO_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:100,READ_ADD:010,READ_DATA:011,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(MISO_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:100,READ_ADD:010,READ_DATA:011,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(MISO_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:100,READ_ADD:010,READ_DATA:011,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(MISO_reg_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[0] 
       (.CLR(GND_1),
        .D(\FSM_sequential_ns_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns[0]));
  LUT6 #(
    .INIT(64'h000000000B090909)) 
    \FSM_sequential_ns_reg[0]_i_1 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(SS_n_IBUF),
        .I3(MOSI_IBUF),
        .I4(Read_add_data_inx_reg_n_0),
        .I5(cs[2]),
        .O(\FSM_sequential_ns_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[1] 
       (.CLR(GND_1),
        .D(\FSM_sequential_ns_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns[1]));
  LUT5 #(
    .INIT(32'h00000F08)) 
    \FSM_sequential_ns_reg[1]_i_1 
       (.I0(cs[0]),
        .I1(MOSI_IBUF),
        .I2(SS_n_IBUF),
        .I3(cs[1]),
        .I4(cs[2]),
        .O(\FSM_sequential_ns_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[2] 
       (.CLR(GND_1),
        .D(\FSM_sequential_ns_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns[2]));
  LUT5 #(
    .INIT(32'h00AA00AE)) 
    \FSM_sequential_ns_reg[2]_i_1 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(SS_n_IBUF),
        .I4(MOSI_IBUF),
        .O(\FSM_sequential_ns_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_ns_reg[2]_i_2 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .O(\FSM_sequential_ns_reg[2]_i_2_n_0 ));
  GND GND
       (.G(GND_1));
  LUT4 #(
    .INIT(16'h80FF)) 
    MEM_reg_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(rstn_IBUF),
        .O(MEM_reg));
  LUT3 #(
    .INIT(8'h40)) 
    MEM_reg_i_2
       (.I0(rx_data[9]),
        .I1(rx_valid),
        .I2(rx_data[8]),
        .O(WEA));
  LUT2 #(
    .INIT(4'hB)) 
    MISO_i_2
       (.I0(cs[2]),
        .I1(tx_valid),
        .O(MISO_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_to_MISO_n_0),
        .Q(MISO_OBUF),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    Read_add_data_inx_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(down_counter_10_n_9),
        .Q(Read_add_data_inx_reg_n_0),
        .R(MISO_reg_0));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .O(E));
  down_counter down_counter_10
       (.Read_add_data_inx_reg(down_counter_10_n_9),
        .Read_add_data_inx_reg_0(Read_add_data_inx_reg_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(cs),
        .p_0_in(p_0_in),
        .rstn_IBUF(rstn_IBUF),
        .\rx_data_reg[0] (down_counter_10_n_2),
        .\rx_data_reg[0]_0 (down_counter_10_n_3),
        .\rx_data_reg[1] (down_counter_10_n_4),
        .\rx_data_reg[2] (down_counter_10_n_8),
        .\rx_data_reg[3] (down_counter_10_n_7),
        .\rx_data_reg[4] (down_counter_10_n_6),
        .\rx_data_reg[8] (down_counter_10_n_5),
        .rx_valid_reg(down_counter_10_n_0),
        .tx_valid(tx_valid));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \rx_data[0]_i_1 
       (.I0(rx_data1_in),
        .I1(down_counter_10_n_2),
        .I2(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .I3(down_counter_10_n_3),
        .I4(\rx_data[9]_i_5_n_0 ),
        .I5(D[0]),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \rx_data[1]_i_1 
       (.I0(rx_data1_in),
        .I1(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .I2(down_counter_10_n_3),
        .I3(down_counter_10_n_4),
        .I4(\rx_data[9]_i_5_n_0 ),
        .I5(D[1]),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \rx_data[2]_i_1 
       (.I0(rx_data1_in),
        .I1(down_counter_10_n_8),
        .I2(down_counter_10_n_3),
        .I3(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .I4(\rx_data[9]_i_5_n_0 ),
        .I5(D[2]),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \rx_data[3]_i_1 
       (.I0(rx_data1_in),
        .I1(down_counter_10_n_7),
        .I2(down_counter_10_n_3),
        .I3(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .I4(\rx_data[9]_i_5_n_0 ),
        .I5(D[3]),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAA0020)) 
    \rx_data[4]_i_1 
       (.I0(rx_data1_in),
        .I1(down_counter_10_n_2),
        .I2(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .I3(down_counter_10_n_6),
        .I4(\rx_data[9]_i_5_n_0 ),
        .I5(D[4]),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \rx_data[5]_i_1 
       (.I0(rx_data1_in),
        .I1(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .I2(down_counter_10_n_6),
        .I3(down_counter_10_n_4),
        .I4(\rx_data[9]_i_5_n_0 ),
        .I5(D[5]),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \rx_data[6]_i_1 
       (.I0(rx_data1_in),
        .I1(down_counter_10_n_8),
        .I2(down_counter_10_n_6),
        .I3(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .I4(\rx_data[9]_i_5_n_0 ),
        .I5(D[6]),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \rx_data[7]_i_1 
       (.I0(rx_data1_in),
        .I1(down_counter_10_n_7),
        .I2(down_counter_10_n_6),
        .I3(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .I4(\rx_data[9]_i_5_n_0 ),
        .I5(D[7]),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \rx_data[8]_i_1 
       (.I0(rx_data1_in),
        .I1(down_counter_10_n_5),
        .I2(down_counter_10_n_2),
        .I3(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .I4(\rx_data[9]_i_5_n_0 ),
        .I5(rx_data[8]),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \rx_data[9]_i_1 
       (.I0(rx_data1_in),
        .I1(down_counter_10_n_5),
        .I2(down_counter_10_n_4),
        .I3(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .I4(\rx_data[9]_i_5_n_0 ),
        .I5(rx_data[9]),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06260000)) 
    \rx_data[9]_i_2 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(tx_valid),
        .I4(MOSI_IBUF),
        .O(rx_data1_in));
  LUT4 #(
    .INIT(16'h080F)) 
    \rx_data[9]_i_5 
       (.I0(tx_valid),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(cs[1]),
        .O(\rx_data[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(D[7]),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_data[8]),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[9]_i_1_n_0 ),
        .Q(rx_data[9]),
        .R(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(down_counter_10_n_0),
        .Q(rx_valid),
        .R(MISO_reg_0));
  LUT6 #(
    .INIT(64'hEA00EA000000AA00)) 
    sig_i_1
       (.I0(sig),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .I3(rstn_IBUF),
        .I4(\count_reg[1]_0 ),
        .I5(rx_valid),
        .O(sig_reg));
  down_counter__parameterized0 tx_to_MISO
       (.\FSM_sequential_cs_reg[2] (MISO_i_2_n_0),
        .MEM_reg(MEM_reg_0),
        .MEM_reg_0(MEM_reg_1),
        .MISO_reg(tx_to_MISO_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\count_reg[1]_0 (\count_reg[1] ),
        .out(cs),
        .p_0_in(p_0_in),
        .tx_valid(tx_valid));
  LUT6 #(
    .INIT(64'hC000C0000000AA00)) 
    tx_valid_i_1
       (.I0(tx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .I3(rstn_IBUF),
        .I4(\count_reg[1]_0 ),
        .I5(rx_valid),
        .O(tx_valid_reg));
endmodule

module SPR
   (tx_valid,
    sig,
    MISO_reg,
    MISO_reg_0,
    tx_valid_reg_0,
    clk_IBUF_BUFG,
    rstn_IBUF,
    \rx_data_reg[8] ,
    rstn,
    D,
    WEA,
    tx_valid_reg_1,
    sig_reg_0,
    count,
    E);
  output tx_valid;
  output sig;
  output MISO_reg;
  output MISO_reg_0;
  output tx_valid_reg_0;
  input clk_IBUF_BUFG;
  input rstn_IBUF;
  input \rx_data_reg[8] ;
  input rstn;
  input [7:0]D;
  input [0:0]WEA;
  input tx_valid_reg_1;
  input sig_reg_0;
  input [1:0]count;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]D;
  wire [0:0]E;
  wire MISO_reg;
  wire MISO_reg_0;
  wire [0:0]WEA;
  wire [7:0]addr;
  wire clk_IBUF_BUFG;
  wire [1:0]count;
  wire rstn;
  wire rstn_IBUF;
  wire \rx_data_reg[8] ;
  wire sig;
  wire sig_reg_0;
  wire [7:0]tx_data;
  wire tx_valid;
  wire tx_valid_reg_0;
  wire tx_valid_reg_1;

  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "RAM/MEM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    MEM_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,D}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rstn_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rstn),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    MISO_i_3
       (.I0(tx_data[5]),
        .I1(tx_data[7]),
        .I2(tx_data[4]),
        .I3(count[1]),
        .I4(count[0]),
        .I5(tx_data[6]),
        .O(MISO_reg_0));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    MISO_i_4
       (.I0(tx_data[1]),
        .I1(tx_data[3]),
        .I2(tx_data[0]),
        .I3(count[1]),
        .I4(count[0]),
        .I5(tx_data[2]),
        .O(MISO_reg));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(addr[0]),
        .R(rstn));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(addr[1]),
        .R(rstn));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(addr[2]),
        .R(rstn));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(addr[3]),
        .R(rstn));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(addr[4]),
        .R(rstn));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(addr[5]),
        .R(rstn));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(addr[6]),
        .R(rstn));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(addr[7]),
        .R(rstn));
  down_counter__parameterized0_0 data_out_counter
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rstn(rstn),
        .sig_reg(sig),
        .tx_valid_reg(tx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(sig_reg_0),
        .Q(sig),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_valid_reg_1),
        .Q(tx_valid),
        .R(\<const0> ));
endmodule

module down_counter
   (rx_valid_reg,
    p_0_in,
    \rx_data_reg[0] ,
    \rx_data_reg[0]_0 ,
    \rx_data_reg[1] ,
    \rx_data_reg[8] ,
    \rx_data_reg[4] ,
    \rx_data_reg[3] ,
    \rx_data_reg[2] ,
    Read_add_data_inx_reg,
    out,
    tx_valid,
    rstn_IBUF,
    Read_add_data_inx_reg_0,
    clk_IBUF_BUFG);
  output rx_valid_reg;
  output p_0_in;
  output \rx_data_reg[0] ;
  output \rx_data_reg[0]_0 ;
  output \rx_data_reg[1] ;
  output \rx_data_reg[8] ;
  output \rx_data_reg[4] ;
  output \rx_data_reg[3] ;
  output \rx_data_reg[2] ;
  output Read_add_data_inx_reg;
  input [2:0]out;
  input tx_valid;
  input rstn_IBUF;
  input Read_add_data_inx_reg_0;
  input clk_IBUF_BUFG;

  wire Read_add_data_inx_reg;
  wire Read_add_data_inx_reg_0;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire [3:0]count_10;
  wire [2:0]out;
  wire p_0_in;
  wire rstn_IBUF;
  wire \rx_data_reg[0] ;
  wire \rx_data_reg[0]_0 ;
  wire \rx_data_reg[1] ;
  wire \rx_data_reg[2] ;
  wire \rx_data_reg[3] ;
  wire \rx_data_reg[4] ;
  wire \rx_data_reg[8] ;
  wire rx_valid_i_2_n_0;
  wire rx_valid_reg;
  wire tx_valid;

  LUT6 #(
    .INIT(64'hFFBFFFFF00300000)) 
    Read_add_data_inx_i_1
       (.I0(tx_valid),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(rx_valid_i_2_n_0),
        .I5(Read_add_data_inx_reg_0),
        .O(Read_add_data_inx_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_10[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \count[1]_i_1 
       (.I0(count_10[3]),
        .I1(count_10[2]),
        .I2(count_10[1]),
        .I3(count_10[0]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hCCC2)) 
    \count[2]_i_1 
       (.I0(count_10[3]),
        .I1(count_10[2]),
        .I2(count_10[1]),
        .I3(count_10[0]),
        .O(\count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \count[3]_i_1 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(rstn_IBUF),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hFE)) 
    \count[3]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .O(\count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \count[3]_i_3 
       (.I0(count_10[0]),
        .I1(count_10[1]),
        .I2(count_10[2]),
        .I3(count_10[3]),
        .O(\count[3]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[3]_i_2_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_10[0]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[3]_i_2_n_0 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_10[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[3]_i_2_n_0 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_10[2]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[3]_i_2_n_0 ),
        .D(\count[3]_i_3_n_0 ),
        .Q(count_10[3]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rx_data[3]_i_2 
       (.I0(count_10[2]),
        .I1(count_10[3]),
        .O(\rx_data_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[6]_i_2 
       (.I0(count_10[1]),
        .I1(count_10[0]),
        .O(\rx_data_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_data[7]_i_2 
       (.I0(count_10[0]),
        .I1(count_10[1]),
        .O(\rx_data_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data[7]_i_3 
       (.I0(count_10[3]),
        .I1(count_10[2]),
        .O(\rx_data_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[8]_i_2 
       (.I0(count_10[0]),
        .I1(count_10[1]),
        .O(\rx_data_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[9]_i_3 
       (.I0(count_10[3]),
        .I1(count_10[2]),
        .O(\rx_data_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data[9]_i_4 
       (.I0(count_10[1]),
        .I1(count_10[0]),
        .O(\rx_data_reg[1] ));
  LUT5 #(
    .INIT(32'h06260000)) 
    rx_valid_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(tx_valid),
        .I4(rx_valid_i_2_n_0),
        .O(rx_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    rx_valid_i_2
       (.I0(count_10[3]),
        .I1(count_10[2]),
        .I2(count_10[1]),
        .I3(count_10[0]),
        .O(rx_valid_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "down_counter" *) 
module down_counter__parameterized0
   (MISO_reg,
    \count_reg[1]_0 ,
    out,
    tx_valid,
    \FSM_sequential_cs_reg[2] ,
    MEM_reg,
    MEM_reg_0,
    p_0_in,
    clk_IBUF_BUFG);
  output MISO_reg;
  output [1:0]\count_reg[1]_0 ;
  input [2:0]out;
  input tx_valid;
  input \FSM_sequential_cs_reg[2] ;
  input MEM_reg;
  input MEM_reg_0;
  input p_0_in;
  input clk_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_cs_reg[2] ;
  wire MEM_reg;
  wire MEM_reg_0;
  wire MISO_reg;
  wire clk_IBUF_BUFG;
  wire [2:2]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [1:0]\count_reg[1]_0 ;
  wire enable0;
  wire [2:0]out;
  wire p_0_in;
  wire tx_valid;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h0800080808000000)) 
    MISO_i_1
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\FSM_sequential_cs_reg[2] ),
        .I3(MEM_reg),
        .I4(count),
        .I5(MEM_reg_0),
        .O(MISO_reg));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hF6)) 
    \count[0]_i_1 
       (.I0(\count_reg[1]_0 [0]),
        .I1(enable0),
        .I2(p_0_in),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFA6)) 
    \count[1]_i_1 
       (.I0(\count_reg[1]_0 [1]),
        .I1(enable0),
        .I2(\count_reg[1]_0 [0]),
        .I3(p_0_in),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA6)) 
    \count[2]_i_1 
       (.I0(count),
        .I1(enable0),
        .I2(\count_reg[1]_0 [1]),
        .I3(\count_reg[1]_0 [0]),
        .I4(p_0_in),
        .O(\count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \count[2]_i_2 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(tx_valid),
        .O(enable0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg[1]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg[1]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[2]_i_1_n_0 ),
        .Q(count),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "down_counter" *) 
module down_counter__parameterized0_0
   (tx_valid_reg,
    sig_reg,
    rstn,
    clk_IBUF_BUFG);
  output tx_valid_reg;
  input sig_reg;
  input rstn;
  input clk_IBUF_BUFG;

  wire \<const1> ;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire rstn;
  wire sig_reg;
  wire [2:0]tx_counter;
  wire tx_valid_reg;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[0]_i_1 
       (.I0(sig_reg),
        .I1(tx_counter[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \count[1]_i_1 
       (.I0(tx_counter[0]),
        .I1(sig_reg),
        .I2(tx_counter[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    \count[2]_i_1 
       (.I0(tx_counter[0]),
        .I1(tx_counter[1]),
        .I2(sig_reg),
        .I3(tx_counter[2]),
        .O(\count[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[0]_i_1_n_0 ),
        .Q(tx_counter[0]),
        .S(rstn));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[1]_i_1_n_0 ),
        .Q(tx_counter[1]),
        .S(rstn));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[2]_i_1_n_0 ),
        .Q(tx_counter[2]),
        .S(rstn));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    tx_valid_i_2
       (.I0(tx_counter[1]),
        .I1(tx_counter[0]),
        .I2(tx_counter[2]),
        .O(tx_valid_reg));
endmodule
