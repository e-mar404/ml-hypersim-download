# Hypersim download

This script will download the first 5 frames of the first 20 scenes, look at `download.py` to see how to increase the number of scenes

# Requirements

Install python dependencies

```
pip install -r requirements.txt
```

# Instructions to use

To run script do:

``` bash
/bin/sh run.sh
```

Running top script will default to creating two directories one for downloads (this dir will be deleted at the end of the script) and one for images (where all the images will go to). If you want to set a specific directory path for download and image dirs you can do this:

``` bash
# setting download and image directories to be in external storage
/bin/sh run.sh --download_dir /Volumes/Drive/fai/download --image_dir /Volumes/Drive/fai/images
```
