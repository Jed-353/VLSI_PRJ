#VHDL FSM Example
fsm:
	ghdl -a -fsynopsys ALU_16.vhd
	ghdl -a -fsynopsys ALU_16_tb.vhd
	ghdl -e -fsynopsys ALU_16_tb
	ghdl -r ALU_16_tb  --wave=./ALU_16_tb.ghw --stop-time=150ns
	
verilog: 
	yosys -m ghdl -p 'ghdl ALU_16.vhd -e ALU_16; write_verilog ALU_16.v'	
	
	
clean:
	rm *.o
	rm *.cf
	rm *.ghw
	rm ALU_16
	rm ALU_16_tb
