vlib work
vlog SPR.v down_counter.v SPI_slave_optimized.v SPI_WITH_SPR.v  SPI_WITH_SPR_tb.v
vsim -voptargs=+acc work.SPI_WITH_SPR_tb
add wave *
add wave -position insertpoint  \
sim:/SPI_WITH_SPR_tb/DUT/SPI/tx_valid \
sim:/SPI_WITH_SPR_tb/DUT/SPI/tx_data \
sim:/SPI_WITH_SPR_tb/DUT/SPI/rx_valid \
sim:/SPI_WITH_SPR_tb/DUT/SPI/rx_data \
sim:/SPI_WITH_SPR_tb/DUT/SPI/cs
add wave -position insertpoint  \
sim:/SPI_WITH_SPR_tb/DUT/RAM/din \
sim:/SPI_WITH_SPR_tb/DUT/RAM/dout \
sim:/SPI_WITH_SPR_tb/DUT/RAM/MEM \
sim:/SPI_WITH_SPR_tb/DUT/RAM/addr
run -all
#quit -sim