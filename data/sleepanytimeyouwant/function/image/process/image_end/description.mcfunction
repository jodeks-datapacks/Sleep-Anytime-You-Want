# Append blank
function sleepanytimeyouwant:image/process/append/blank

data modify storage sleepanytimeyouwant:image tellraw append \
  from storage sleepanytimeyouwant:image current.description_text

# Append blank
function sleepanytimeyouwant:image/process/append/blank

# Append line_break
execute unless score $index.image_data sleepanytimeyouwant.image = $length sleepanytimeyouwant.image \
  run function sleepanytimeyouwant:image/process/append/line_break

# Remove first element from the description
data remove storage sleepanytimeyouwant:image current.description[0]
 