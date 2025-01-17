#!/usr/bin/env bash

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <arg1>"
    exit 1
fi

output_file_name="logs_archive_$(date +'%Y%m%d_%H%M%S').tar.zst"

tar -I zstd -cvf "${output_file_name}" $1