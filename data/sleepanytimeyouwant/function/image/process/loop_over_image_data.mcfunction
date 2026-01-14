# Copy current pixel
data modify storage sleepanytimeyouwant:image current.pixel_color set \
  from storage sleepanytimeyouwant:image current.image_data[0]
data modify storage sleepanytimeyouwant:image current.description_text set \
  from storage sleepanytimeyouwant:image current.description[0]

scoreboard players add $index.image_data sleepanytimeyouwant.image 1

# Calculate column
scoreboard players operation $index.column sleepanytimeyouwant.image = $index.image_data sleepanytimeyouwant.image
scoreboard players operation $index.column sleepanytimeyouwant.image %= $width sleepanytimeyouwant.image

# Calculate row
scoreboard players operation $index.row sleepanytimeyouwant.image = $index.image_data sleepanytimeyouwant.image
scoreboard players operation $index.row sleepanytimeyouwant.image /= $width sleepanytimeyouwant.image

# Append start spacing
execute if score $index.column sleepanytimeyouwant.image matches 1 run \
  function sleepanytimeyouwant:image/process/append/blank

# Append colored pixel
execute unless data storage sleepanytimeyouwant:image current{pixel_color: ''} run \
  function sleepanytimeyouwant:image/process/append/pixel
# Append background pixel
execute if data storage sleepanytimeyouwant:image current{pixel_color: ''} run \
  function sleepanytimeyouwant:image/process/append/background

# Append description
execute if score $index.column sleepanytimeyouwant.image matches 0 run \
    function sleepanytimeyouwant:image/process/image_end/description

# Remove first element from the image_data array
data remove storage sleepanytimeyouwant:image current.image_data[0]
# Loop over rows
execute if score $index.row sleepanytimeyouwant.image < $height sleepanytimeyouwant.image run \
  function sleepanytimeyouwant:image/process/loop_over_image_data
 