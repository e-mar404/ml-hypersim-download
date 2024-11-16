#!/bin/sh

download_dir="./downloads"
image_dir="./images"

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
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

rm -rf "$image_dir"

./download.py --contains scene_cam_00_final_preview --contains frame.0000.color.jpg --silent -d "$download_dir"
./download.py --contains scene_cam_00_final_preview --contains frame.0001.color.jpg --silent -d "$download_dir"
./download.py --contains scene_cam_00_final_preview --contains frame.0002.color.jpg --silent -d "$download_dir"
./download.py --contains scene_cam_00_final_preview --contains frame.0003.color.jpg --silent -d "$download_dir"
./download.py --contains scene_cam_00_final_preview --contains frame.0004.color.jpg --silent -d "$download_dir"

./move.py --source "$download_dir" --destination "$image_dir"

rm -rf "$download_dir"
