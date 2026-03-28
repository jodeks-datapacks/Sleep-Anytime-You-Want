#> sleep_anytime_you_want:image/process/generate
#
# This function generates the image data.

data modify storage sleep_anytime_you_want:image data.current.image_data set from storage sleep_anytime_you_want:image data.image_data
data modify storage sleep_anytime_you_want:image data.current.description set from storage sleep_anytime_you_want:image data.description
data modify storage sleep_anytime_you_want:image data.current.pixel_character set from storage sleep_anytime_you_want:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data sleep_anytime_you_want.image 0
# Set width
execute store result score $width sleep_anytime_you_want.image run data get storage sleep_anytime_you_want:image data.width
# Set height
execute store result score $height sleep_anytime_you_want.image run data get storage sleep_anytime_you_want:image data.height
# Set length
scoreboard players operation $length sleep_anytime_you_want.image = $width sleep_anytime_you_want.image
scoreboard players operation $length sleep_anytime_you_want.image *= $height sleep_anytime_you_want.image
# Clear remaining entries in tellraw
data remove storage sleep_anytime_you_want:image data.tellraw

# Add spacing on top
function sleep_anytime_you_want:image/process/append/line_break
# Loop over image data
function sleep_anytime_you_want:image/process/loop_over_image_data
# Add spacing on bottom
function sleep_anytime_you_want:image/process/append/line_break