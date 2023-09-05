control_logic = "control_logic_delay"
analytical_analysis = False
num_sim_threads = 16
spice_name = "Xyce"
netlist_only = False
tech_name = "sky130"
nominal_corner_only = True
route_supplies = "ring"
check_lvsdrc = True
uniquify = True
analytical_delay = True
word_size = 8 # Bits
num_words = 1024

human_byte_size = "{:.0f}kbyte".format((word_size * num_words)/1024/8)

# Allow byte writes
write_size = 8 # Bits

# Dual port
num_rw_ports = 1
num_r_ports = 1
num_w_ports = 0
ports_human = '1rw1r'

output_name = "{tech_name}_sram_{human_byte_size}_{ports_human}_{word_size}x{num_words}_{write_size}_norbl".format(**locals())
output_path = "/home/sacrow/tapeout/macro"
