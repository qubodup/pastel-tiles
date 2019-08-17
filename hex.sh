#!/bin/sh

# crop to center
magick gold.xcfbz2 -flatten -crop 90x90+2+1 +repage gold_1_crop.png
# scale to size
magick gold_1_crop.png -interpolate Nearest -filter point -resize 77x77  -gravity Center -crop 66x77+0+0 +repage gold_2a_resize.png
magick gold_1_crop.png -interpolate Nearest -filter point -resize 77x77  -gravity Center -crop 77x66+0+0 +repage gold_2b_resize.png
# mask with
magick composite -compose CopyOpacity mask_v.png gold_2a_resize.png gold_3a_masked.png
magick composite -compose CopyOpacity mask_h.png gold_2b_resize.png gold_3b_masked.png
# gif
magick -background none gold_3a_masked.png goldHex.gif
magick -background none gold_3b_masked.png goldHexH.gif

# crop to center
magick grains.xcfbz2 -flatten -crop 80x80+7+7 +repage grains_1_crop.png
# scale to size h
magick grains_1_crop.png -interpolate Nearest -filter point -resize 77x77  -gravity Center -crop 66x77+0+0 +repage grains_2_resize.png
# mask with h
magick composite -compose CopyOpacity mask_v.png grains_2_resize.png grains_3_masked.png
# gif
magick -background none grains_3_masked.png wheatHex.gif


# crop to center
magick woods.xcfbz2 -flatten -crop 80x80+7+7 +repage woods_1_crop.png
# scale to size h
magick woods_1_crop.png -interpolate Nearest -filter point -resize 77x77  -gravity Center -crop 66x77+0+0 +repage woods_2_resize.png
# mask with h
magick composite -compose CopyOpacity mask_v.png woods_2_resize.png woods_3_masked.png
# gif
magick -background none woods_3_masked.png woodHex.gif


# crop to center
magick clay.xcfbz2 -flatten -crop 80x80+7+11 +repage clay_1_crop.png
# scale to size h
magick clay_1_crop.png -interpolate Nearest -filter point -resize 77x77  -gravity Center -crop 66x77+0+0 +repage clay_2_resize.png
# mask with h
magick composite -compose CopyOpacity mask_v.png clay_2_resize.png clay_3_masked.png
# gif
magick -background none clay_3_masked.png clayHex.gif


# crop to center
magick desert.xcfbz2 -flatten -crop 80x80+7+7 +repage desert_1_crop.png
# scale to size h
magick desert_1_crop.png -interpolate Nearest -filter point -resize 77x77  -gravity Center -crop 66x77+0+0 +repage desert_2_resize.png
# mask with h
magick composite -compose CopyOpacity mask_v.png desert_2_resize.png desert_3_masked.png
# gif
magick -background none desert_3_masked.png desertHex.gif


# crop to center
magick grass.xcfbz2 -flatten -crop 80x80+7+7 +repage grass_1_crop.png
# scale to size h
magick grass_1_crop.png -interpolate Nearest -filter point -resize 77x77  -gravity Center -crop 66x77+0+0 +repage grass_2_resize.png
# mask with h
magick composite -compose CopyOpacity mask_v.png grass_2_resize.png grass_3_masked.png
# gif
magick -background none grass_3_masked.png sheepHex.gif


# crop to center
magick sea.xcfbz2 -flatten -crop 80x80+7+7 +repage sea_1_crop.png
# scale to size h
magick sea_1_crop.png -interpolate Nearest -filter point -resize 77x77  -gravity Center -crop 66x77+0+0 +repage sea_2_resize.png
# mask with h
magick composite -compose CopyOpacity mask_v.png sea_2_resize.png sea_3_masked.png
# gif
magick -background none sea_3_masked.png waterHex.gif


# crop to center
magick rock.xcfbz2 -flatten -crop 77x77+9+13 +repage rock_1_crop.png
# scale to size h
magick rock_1_crop.png -interpolate Nearest -filter point -resize 77x77  -gravity Center -crop 66x77+0+0 +repage rock_2_resize.png
# mask with h
magick composite -compose CopyOpacity mask_v.png rock_2_resize.png rock_3_masked.png
# gif
magick -background none rock_3_masked.png oreHex.gif
