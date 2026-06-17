# escape sequences don't work on macros, but we can do this instead
data modify storage bcm macro set value {macro:"$(disable_walls)$(size)$(color)"}
data modify storage bcm macro merge from storage bcm registry

# show dialog
scoreboard players enable @s map_settings
execute store success score .success map_settings run function bcm:dialog/map_settings_macro with storage bcm macro
execute if score .success map_settings matches 1 run return 1

# catch error
trigger map_settings set -1
return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t show dialog; sending default input"'}