#!/usr/bin/env python3
import os
import shutil
import argparse

def find_unique_path_with_counter(destination_dir, top_dir_name, counter, extension):
    new_filename = f"{top_dir_name}_{counter:05d}{extension}"
    return os.path.join(destination_dir, new_filename)

def copy_color_files(source_dir, destination_dir):
    os.makedirs(destination_dir, exist_ok=True)

    for root, _, files in os.walk(source_dir):
        counter = 1
        for filename in sorted(files):
            if filename.endswith(".color.jpg"):
                source_path = os.path.join(root, filename)

                relative_path = os.path.relpath(root, source_dir)
                top_dir_name = relative_path.split(os.sep)[0]

                _, extension = os.path.splitext(filename)
                unique_path = find_unique_path_with_counter(destination_dir, top_dir_name, counter, extension)
                counter += 1
                
                shutil.copy2(source_path, unique_path)
                print(f"Copied: {source_path} to {unique_path}")

def main():
    parser = argparse.ArgumentParser(description="Copy .color.jpg files from one directory to another.")
    parser.add_argument("--source", help="Path to the source directory", required=True)
    parser.add_argument("--destination", help="Path to the destination directory", required=True)
    
    args = parser.parse_args()

    copy_color_files(args.source, args.destination)

if __name__ == "__main__":
    main()

