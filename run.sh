#!/bin/bash

download_dir="./downloads"
image_dir="./images"
size=1
frames=0009

while [ $# -gt 0 ]; do
  case "$1" in
    --download_dir)
      download_dir="$2"
      shift 2 
      ;;
    --image_dir)
      image_dir="$2"
      shift 2 
      ;;
    --size)
      size="$2"
      shift 2 
      ;;
    --frames)
      frames=$(( $2 - 1 )) 
      shift 2 
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

rm -rf "$image_dir"

for i in {0000..$frames}; do
  ./download.py --size $size --contains scene_cam_00_final_preview --contains frame.${i}.color.jpg --silent -d "$download_dir"
done

./move.py --source "$download_dir" --destination "$image_dir"

rm -rf "$download_dir"
