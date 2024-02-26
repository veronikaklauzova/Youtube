#!/bin/bash
#############################################
# Convert .VHDX file to Qemu (qcow2) format)
# Author: Veronika Klauzova
#############################################

#filename="Windows11_InsiderPreview_Client_ARM64_en-us_26058"

read -p "Enter Windows filename without extension: " filename

echo -e "\n"

# original and converted files
windows11_arm_vhdx_file_location="/Users/$(whoami)/Downloads/$filename.VHDX"
destination_converted_qcow2_file_location="/Users/$(whoami)/Downloads/$filename.qcow2"

# verification of files locations
echo "Full path of the downloaded VHDX Windows 11 file: "
echo $windows11_arm_vhdx_file_location
echo "Full path of the converted VHDX to Qemu (qcow2) Windows 11 file: "
echo $destination_converted_qcow2_file_location

echo -e "\n"

# conversion from VHDX to qemu (qcow2) file
echo "conversion from VHDX to qemu (qcow2) file"
echo "qemu-img convert -p -O qcow2 $windows11_arm_vhdx_file_location $destination_converted_qcow2_file_location"
qemu-img convert -p -O qcow2 $windows11_arm_vhdx_file_location $destination_converted_qcow2_file_location
echo -e "\n"

# verification of output files
echo "Original and Converted files:"
ls -lah /Users/$(whoami)/Downloads/$filename*

