#!/bin/bash
source common.sh

images=''

for i in ${sizes_i[*]}; do
    size="${sizes_x[$i]}x${sizes_y[$i]}"
    images="$images usda.$size.$output_format landsat.$size.$output_format"
done

gm montage \
    -geometry 1000x800 \
    -tile 2x3 \
    -bordercolor white \
    -borderwidth 10 \
    $images scaling.$output_format
