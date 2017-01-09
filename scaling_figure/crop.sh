#!/bin/bash
source common.sh

cropsize() {
    sensor=$1

    size_x=$2
    size_y=$3

    center_x=1500
    center_y=1250

    crop_x=$(($center_x - $size_x / 2))
    crop_y=$(($center_y - $size_y / 2))

    input_img="${sensor}_1m.tif"
    output_img="${sensor}.${size_x}x${size_y}.${output_format}"

    gm convert -crop \
        "$size_x"x"$size_y"+$crop_x+$crop_y \
        $input_img $output_img
}

for i in ${sizes_i[*]}; do
    cropsize landsat ${sizes_x[$i]} ${sizes_y[$i]}
    cropsize usda ${sizes_x[$i]} ${sizes_y[$i]}
done
