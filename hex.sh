#!/bin/sh

# crop to center
magick gold.xcfbz2 -flatten -crop 90x90+2+1 +repage gold_1_crop.png
# scale to size
magick gold_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 66x77+0+0 +repage gold_2a_resize.png
magick gold_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 77x66+0+0 +repage gold_2b_resize.png
# mask
magick composite -compose CopyOpacity mask_v.png gold_2a_resize.png gold_3a_masked.png
magick composite -compose CopyOpacity mask_h.png gold_2b_resize.png gold_3b_masked.png
# gif
magick -background none gold_3a_masked.png goldHex.gif
magick -background none gold_3b_masked.png rotat_goldHex.gif

# crop to center
magick grains.xcfbz2 -flatten -crop 80x80+7+7 +repage grains_1_crop.png
# scale to size
magick grains_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 66x77+0+0 +repage grains_2a_resize.png
magick grains_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 77x66+0+0 +repage grains_2b_resize.png
# mask
magick composite -compose CopyOpacity mask_v.png grains_2a_resize.png grains_3a_masked.png
magick composite -compose CopyOpacity mask_h.png grains_2b_resize.png grains_3b_masked.png
# gif
magick -background none grains_3a_masked.png wheatHex.gif
magick -background none grains_3b_masked.png rotat_wheatHex.gif


# crop to center
magick woods.xcfbz2 -flatten -crop 80x80+7+7 +repage woods_1_crop.png
# scale to size
magick woods_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 66x77+0+0 +repage woods_2a_resize.png
magick woods_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 77x66+0+0 +repage woods_2b_resize.png
# mask
magick composite -compose CopyOpacity mask_v.png woods_2a_resize.png woods_3a_masked.png
magick composite -compose CopyOpacity mask_h.png woods_2b_resize.png woods_3b_masked.png
# gif
magick -background none woods_3a_masked.png woodHex.gif
magick -background none woods_3b_masked.png rotat_woodHex.gif


# crop to center
magick clay.xcfbz2 -flatten -crop 80x80+7+11 +repage clay_1_crop.png
# scale to size
magick clay_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 66x77+0+0 +repage clay_2a_resize.png
magick clay_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 77x66+0+0 +repage clay_2b_resize.png
# mask
magick composite -compose CopyOpacity mask_v.png clay_2a_resize.png clay_3a_masked.png
magick composite -compose CopyOpacity mask_h.png clay_2b_resize.png clay_3b_masked.png
# gif
magick -background none clay_3a_masked.png clayHex.gif
magick -background none clay_3b_masked.png rotat_clayHex.gif


# crop to center
magick desert.xcfbz2 -flatten -crop 80x80+7+7 +repage desert_1_crop.png
# scale to size
magick desert_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 66x77+0+0 +repage desert_2a_resize.png
magick desert_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 77x66+0+0 +repage desert_2b_resize.png
# mask
magick composite -compose CopyOpacity mask_v.png desert_2a_resize.png desert_3a_masked.png
magick composite -compose CopyOpacity mask_h.png desert_2b_resize.png desert_3b_masked.png
# gif
magick -background none desert_3a_masked.png desertHex.gif
magick -background none desert_3b_masked.png rotat_desertHex.gif


# crop to center
magick grass.xcfbz2 -flatten -crop 80x80+7+7 +repage grass_1_crop.png
# scale to size
magick grass_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 66x77+0+0 +repage grass_2a_resize.png
magick grass_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 77x66+0+0 +repage grass_2b_resize.png
# mask
magick composite -compose CopyOpacity mask_v.png grass_2a_resize.png grass_3a_masked.png
magick composite -compose CopyOpacity mask_h.png grass_2b_resize.png grass_3b_masked.png
# gif
magick -background none grass_3a_masked.png sheepHex.gif
magick -background none grass_3b_masked.png rotat_sheepHex.gif


# crop to center
magick sea.xcfbz2 -flatten -crop 80x80+7+7 +repage -channel B -level 9% -channel All -brightness-contrast 0x10 sea_1_crop.png
# scale to size
magick sea_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 66x77+0+0 +repage sea_2a_resize.png
magick sea_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 77x66+0+0 +repage sea_2b_resize.png
# mask
magick composite -compose CopyOpacity mask_v.png sea_2a_resize.png sea_3a_masked.png
magick composite -compose CopyOpacity mask_h.png sea_2b_resize.png sea_3b_masked.png
# gif
magick -background none sea_3a_masked.png waterHex.gif
magick -background none sea_3b_masked.png rotat_waterHex.gif


# crop to center
magick rock.xcfbz2 -flatten -crop 77x77+9+13 +repage rock_1_crop.png
# scale to size
magick rock_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 66x77+0+0 +repage rock_2a_resize.png
magick rock_1_crop.png -interpolate Nearest -filter point -resize 77x77 -gravity Center -crop 77x66+0+0 +repage rock_2b_resize.png
# mask
magick composite -compose CopyOpacity mask_v.png rock_2a_resize.png rock_3a_masked.png
magick composite -compose CopyOpacity mask_h.png rock_2b_resize.png rock_3b_masked.png
# gif
magick -background none rock_3a_masked.png oreHex.gif
magick -background none rock_3b_masked.png rotat_oreHex.gif
