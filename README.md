# comparing two digit codes for equality using element NOR

designing NOR element:
* main.vhd -- creating a simple nor element using behavioral model (not using)
* n_or.vhd -- creating more advanced NOR element, using process form and adding delayes: from '0' to '1' delay is 5 ps, from '1' to '0' delay is 10 ps
* testbench.vhd -- testing our NOR element from n_or.vhd

now designing element comparing two digit codes for equality:
* process.vhd -- simple element, using process for, without use of nor element
* config.vhd -- advanced element via structural form, using our own NOR and behavioral form. (not using process form)
* test.vhd -- testbench for config.vhd
