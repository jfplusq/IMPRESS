# IMPRESS
[IMPRESS](https://ieeexplore.ieee.org/document/8641703) - IMplementation of Partial REconfigurable SystemS 

## IMPRESS structure 
The project contains four different folders:
  * reconfiguration_tool_library: contains the script sources for generating the static bitstream and the reconfigurable partial bitstreams (PBS)
  * reconfiguration_engine_library: contains the sources of the reconfigurable engine that are needed to load the partial bitstreams.
  * input_file_templates: contains templates for all the files needed to describe the design
  * examples: contains a simple example with a VIO connected to an operation that can be reconfigure as a multiplication or an addition

**NOTE1:** Partial bitstreams (PBS) generated with IMPRESS have to be loaded with the reconfiguration engine provided in the project. If the user prefers it, it is possible to modify IMPRESS to generate normal Xilinx partial bitstreams. The limitation with this solution is that relocation is no longer possible and reconfigurable partitions need to span a whole number of clock regions height. 

**NOTE2:** The reconfiguration engine needs a description file of the FPGA to be reconfigured. Right now only 7z020 model is provided. If other devices are going to be used it is necessary to create a new description file detailing the resources of the FPGA (this will be automatized in the future). 

## How to use IMPRESS 

  * Fill the input templates (see example1)
  * In Vivado add the following command in the TCL console "source (path to IMPRESS)/reconfiguration_tool_library/reconfiguration_tool.tcl" 
  * In Vivado add the following command in the TCL console "implement_reconfigurable_design (path to project_info file)"
  
## Citation

Use the following paper to cite this work.

R. Zamacola, A. G. Martínez, J. Mora, A. Otero and E. d. L. Torre, "IMPRESS: Automated Tool for the Implementation of Highly Flexible Partial Reconfigurable Systems with Xilinx Vivado," 2018 International Conference on ReConFigurable Computing and FPGAs (ReConFig), Cancun, Mexico, 2018, pp. 1-8.
