#User variables
MODULE_NAME = easy_test
DFILES   = $(MODULE_NAME).sv
VFILES   = $(MODULE_NAME)_tb.sv
TB		 = $(MODULE_NAME)
# Environment variables
COMP	= 	vcs -full64 -debug_all  -sverilog -l vcs_comp.log -timescale=1ns/1ps -sverilog -o $(TB).simv
SIM 	= 	./$(TB).simv $(VPD_NAME)  -l vcs_sim.log 
GSIM	=	./$(TB).simv $(VPD_NAME) -l vcs_sim.log -gui &

#command
comp:
	$(COMP) $(DFILES)

sim:
	$(SIM) 
gsim:
	$(GSIM)

clean:
	rm -rf AN.DB DVEfiles csrc *.simv *.simv.daidir ucli.key
	rm -rf *.log* *.vpd  *.fsdb *.conf *.rc
	rm -rf verdiLog
run:clean comp sim
