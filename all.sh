#!/bin/sh

download_dir="./downloads"

while [ $# -gt 0 ]; do
  case "$1" in
    --download_dir)
      download_dir="$2"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

./download.py --contains scene_cam_00 --contains frame.0000 --silent -d "$download_dir"
./download.py --contains scene_cam_00 --contains frame.0001 --silent -d "$download_dir"
./download.py --contains scene_cam_00 --contains frame.0002 --silent -d "$download_dir"
./download.py --contains scene_cam_00 --contains frame.0003 --silent -d "$download_dir"
./download.py --contains scene_cam_00 --contains frame.0004 --silent -d "$download_dir"
