################################################################################
# Filename: csla_64bit.constraints.tcl
# Author: Lam King Sum, Sam
# Email: ksalmaf@connect.ust.hk
# Affiliation: Hong Kong University of Science and Technology
# -------------------------------------------------------------------------------
# This is the template constraint script for ELEC5160/EESM5020.
################################################################################

################################################################################
# Timing constraint
################################################################################
# Critical path constraint: set the desired clock frequency
create_clock -period 5.0 -name VCLK

# Input delay and output delay
set_input_delay -max 1.0 -clock VCLK \
   [all_inputs]
set_output_delay -max 1.0 -clock VCLK \
   [all_outputs]

################################################################################
# Enviornement attribute constraint
################################################################################
# Load on the output ports
set_load 1 [all_outputs]

# Input transition time on all inputs except clock
set_input_transition 0.1 \
  [all_inputs]
