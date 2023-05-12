#!/bin/bash

while getopts ":j:d:" opt; do
  case ${opt} in
    j )
      threads=$OPTARG
      ;;
    d )
      output_path=$OPTARG
      ;;
    \? )
      echo "Invalid option: -$OPTARG" 1>&2
      return 
      ;;
    : )
      echo "Option -$OPTARG requires an argument." 1>&2
      return
      ;;
  esac
done

if [ -z "${threads}" ] || [ -z "${output_path}" ]; then
  echo "Usage: $0 -j <how_many_threads> -d <output_path>" >&2
  return
fi

cd octopos_hw_zcu102

echo "reset_run impl_1 -prev_step " >> project_zcu102.tcl
echo "launch_runs impl_1 -to_step write_bitstream -jobs ${threads}" >> project_zcu102.tcl
echo "set_property pfm_name {} [get_files -all {$(pwd)/zcu102_octopos/zcu102_octopos.srcs/sources_1/bd/design_1/design_1.bd}]" >> project_zcu102.tcl
echo "write_hw_platform -fixed -include_bit -force -file ${output_path}/design_1_wrapper.xsa" >> project_zcu102.tcl

vivado -source $(pwd)/project_zcu102.tcl

