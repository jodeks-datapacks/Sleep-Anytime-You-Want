# Copy current pixel
data modify storage sleep_anytime_you_want:image data.current.pixel_color set \
  from storage sleep_anytime_you_want:image data.current.image_data[0]
data modify storage sleep_anytime_you_want:image data.current.description_text set \
  from storage sleep_anytime_you_want:image data.current.description[0]

scoreboard players add $index.image_data sleep_anytime_you_want.image 1

# Calculate column
scoreboard players operation $index.column sleep_anytime_you_want.image = $index.image_data sleep_anytime_you_want.image
scoreboard players operation $index.column sleep_anytime_you_want.image %= $width sleep_anytime_you_want.image

# Calculate row
scoreboard players operation $index.row sleep_anytime_you_want.image = $index.image_data sleep_anytime_you_want.image
scoreboard players operation $index.row sleep_anytime_you_want.image /= $width sleep_anytime_you_want.image

# Append start spacing
execute if score $index.column sleep_anytime_you_want.image matches 1 run \
  function sleep_anytime_you_want:image/process/append/blank

# Append colored pixel
execute unless data storage sleep_anytime_you_want:image data.current{pixel_color: ''} run \
  function sleep_anytime_you_want:image/process/append/pixel
# Append background pixel
execute if data storage sleep_anytime_you_want:image data.current{pixel_color: ''} run \
  function sleep_anytime_you_want:image/process/append/background

# Append description
execute if score $index.column sleep_anytime_you_want.image matches 0 run \
    function sleep_anytime_you_want:image/process/image_end/description

# Remove first element from the image_data array
data remove storage sleep_anytime_you_want:image data.current.image_data[0]
# Loop over rows
execute if score $index.row sleep_anytime_you_want.image < $height sleep_anytime_you_want.image run \
  function sleep_anytime_you_want:image/process/loop_over_image_data
 