#!/bin/bash
# version 1.0.0

branch="main"

# Parse command-line options
while getopts ":b:h" option; do
  case "${option}" in
    b)
      branch=${OPTARG}
      ;;
    h)
      echo "Usage: ./library.sh -b [branch]"
      echo "-b OPTIONAL : specifies the branch to download from."
      exit 0
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

# Create libraries directory
mkdir libraries

# List of all files to download
files=(
# Debug
"https://raw.githubusercontent.com/cotontigeh/pico8-utils/$branch/debug.lua"
)

# Download each file
for url in ${files[@]}; do
  curl -o ./libraries/$(basename $url) $url
done