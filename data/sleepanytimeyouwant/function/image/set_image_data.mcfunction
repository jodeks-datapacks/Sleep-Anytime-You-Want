#> sleepanytimeyouwant:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage sleepanytimeyouwant:image image_data  
# @writes storage sleepanytimeyouwant:image width  
# @writes storage sleepanytimeyouwant:image height  
# @writes storage sleepanytimeyouwant:image background_color  
# @writes storage sleepanytimeyouwant:image description  
# @writes storage sleepanytimeyouwant:image pixel_character.blank  
# @writes storage sleepanytimeyouwant:image pixel_character.chat  
# @writes storage sleepanytimeyouwant:image pixel_character.lore

data remove storage sleepanytimeyouwant:image image_data
data remove storage sleepanytimeyouwant:image width
data remove storage sleepanytimeyouwant:image height
data remove storage sleepanytimeyouwant:image background_color
data remove storage sleepanytimeyouwant:image description

$data modify storage sleepanytimeyouwant:image image_data set value $(image_data)
$data modify storage sleepanytimeyouwant:image width set value $(width)
$data modify storage sleepanytimeyouwant:image height set value $(height)
$data modify storage sleepanytimeyouwant:image background_color set value "$(background_color)"
$data modify storage sleepanytimeyouwant:image description set value $(description)

data modify storage sleepanytimeyouwant:image pixel_character.blank set value "　"
data modify storage sleepanytimeyouwant:image pixel_character.pixel set value "▌▌"
data modify storage sleepanytimeyouwant:image pixel_character.line_break set value '\n'

function sleepanytimeyouwant:image/process/generate
