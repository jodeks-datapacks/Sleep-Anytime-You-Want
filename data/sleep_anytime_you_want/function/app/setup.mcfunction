scoreboard objectives add jodek.config dummy
execute unless score &sleep_anytime_you_want_load_message jodek.config = &sleep_anytime_you_want_load_message jodek.config run scoreboard players set &sleep_anytime_you_want_load_message jodek.config 1
execute unless score &sleep_anytime_you_want_advancements jodek.config = &sleep_anytime_you_want_advancements jodek.config run scoreboard players set &sleep_anytime_you_want_advancements jodek.config 1

scoreboard objectives add sleep_anytime_you_want.image dummy

# Print the image
function sleep_anytime_you_want:config/image