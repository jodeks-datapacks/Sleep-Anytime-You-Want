# Append blank
function sleep_anytime_you_want:image/process/append/blank

data modify storage sleep_anytime_you_want:image data.tellraw append \
  from storage sleep_anytime_you_want:image data.current.description_text

# Append blank
function sleep_anytime_you_want:image/process/append/blank

# Append line_break
execute unless score $index.image_data sleep_anytime_you_want.image = $length sleep_anytime_you_want.image \
  run function sleep_anytime_you_want:image/process/append/line_break

# Remove first element from the description
data remove storage sleep_anytime_you_want:image data.current.description[0]
 