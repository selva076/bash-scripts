#!/usr/bin/bash

f_location="/mnt/c/Users/Dell3530/linux/temp_logs"
b_loc="/mnt/c/Users/Dell3530/linux/backup"

# Correct date formatting (remove spaces and fix syntax)
filename=$(date +%y%m%d_%H%M%S)

# Navigate to backup directory before creating archive
cd "$b_loc" || exit

# Create the tar.gz archive
tar czvf "$filename.tar.gz" -C "$f_location" .

