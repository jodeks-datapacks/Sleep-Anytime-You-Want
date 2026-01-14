#> sleepanytimeyouwant:image/process/generate
#
# This function generates the image data.

data modify storage sleepanytimeyouwant:image current.image_data set from storage sleepanytimeyouwant:image image_data
data modify storage sleepanytimeyouwant:image current.description set from storage sleepanytimeyouwant:image description
data modify storage sleepanytimeyouwant:image current.pixel_character set from storage sleepanytimeyouwant:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data sleepanytimeyouwant.image 0
# Set width
execute store result score $width sleepanytimeyouwant.image run data get storage sleepanytimeyouwant:image width
# Set height
execute store result score $height sleepanytimeyouwant.image run data get storage sleepanytimeyouwant:image height
# Set length
scoreboard players operation $length sleepanytimeyouwant.image = $width sleepanytimeyouwant.image
scoreboard players operation $length sleepanytimeyouwant.image *= $height sleepanytimeyouwant.image
# Clear remaining entries in tellraw
data remove storage sleepanytimeyouwant:image tellraw

# Add spacing on top
function sleepanytimeyouwant:image/process/append/line_break
# Loop over image data
function sleepanytimeyouwant:image/process/loop_over_image_data
# Add spacing on bottom
function sleepanytimeyouwant:image/process/append/line_break