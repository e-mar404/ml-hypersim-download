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
# defaults download first 10 frames from the first scene/url

./run.sh
```

Running the script above will default to creating two directories one for downloads (this dir will be deleted at the end of the script) and one for images (where all the images will go to).

## Extra args

--download_dir /file/path 
    (temp directory to download everything)

--images_dir /file/path 
    (directory where all the frames for all the scenes will be dumped in)

--size # 
    (number of scenes/urls to use, defaults to 1)

--frames #### 
    (needs to be 4 digits with leading 0's i.e. 0010 for 10 frames, this will download that many frames from each scene selected)

### Example

``` bash
# download the first 20 frames from the first 2 scenes/url into an external drive

./run.sh --download_dir /Volumes/Drive/fai/download --image_dir /Volumes/Drive/fai/images --size 2 --frames 0020
```
