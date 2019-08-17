#!/bin/sh

#./hex.sh

# selection of images
sel="*1_crop* *3a_masked.png *3b_masked.png"

# get largest side
maxside=0
width=0
height=0
for i in $sel; do
	width=$(magick identify -format "%w" $i)
	height=$(magick identify -format "%w" $i)
	if [ "$width" -gt "$maxside" ]; then
		maxside=$width
	fi
	if [ "$height" -gt "$maxside" ]; then
		maxside=$height
	fi
done

# pad each file
mkdir preview-tmp/
fn=0
for i in $sel; do
	magick $i -gravity Center -extent "$maxside"x"$maxside" preview-tmp/$(printf "%03d" $fn).png
	((fn++))
done

# preview all of them
magick montage -label '' preview-tmp/* -geometry +2+2 preview.png

# cleanup
rm -r preview-tmp/