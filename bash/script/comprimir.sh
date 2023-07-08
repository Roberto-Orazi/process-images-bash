#!/bin/env bash

ls *.jpg > image_list.txt

grep "^[A-Z][a-z]\+\.jpg$" image_list.txt > valid_names.txt

grep "a\.jpg$" valid_names.txt | wc -l > total_a.txt

zip compressed_files.zip image_list.txt valid_names.txt total_a.txt *.jpg