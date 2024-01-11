# Verilog Files

SRC_DESIGN = $(shell pwd)/src/dff_ram_4x72.v
TB_DESIGN = $(shell pwd)/tb/tb_dff_ram_4x72.v
VVP_DESIGN = $(shell pwd)/temp/tb_dff_ram_4x72.vvp
VCD_DESIGN = $(shell pwd)/temp/tb_dff_ram_4x72.vcd

# Compilation Settings

COMPILER = iverilog
COMPILER_FLAG = -o

# Simulation Settings

SIMULATION_FLAG = vvp

# Target: Main

all: design

design: compile_design
		$(SIMULATION_FLAG) $(VVP_DESIGN)

compile_design: 
		mkdir -p temp
		$(COMPILER) $(COMPILER_FLAG) $(VVP_DESIGN) $(TB_DESIGN) $(SRC_DESIGN)

clean: 
		rm -rf temp

