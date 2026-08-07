# escape sequences don't work on macros, but we can do this instead
data modify storage bcm macro set value {macro:"$(gates)$(camera)$(wall_height)$(gens)$(flags)$(spawnpoints)$(spawns)$(save)"}

# get current values
execute store result storage bcm macro.save byte 1 run scoreboard players get display.save set_render_box
execute store result storage bcm macro.spawns byte 1 run scoreboard players get display.spawn set_render_box
execute store result storage bcm macro.spawnpoints byte 1 run scoreboard players get display.spawnpoint set_render_box
execute store result storage bcm macro.flags byte 1 run scoreboard players get display.flags set_render_box
execute store result storage bcm macro.gens byte 1 run scoreboard players get display.gens set_render_box
execute store result storage bcm macro.wall_height byte 1 run scoreboard players get display.wall_height set_render_box
execute store result storage bcm macro.camera byte 1 run scoreboard players get display.camera set_render_box
execute store result storage bcm macro.gates byte 1 run scoreboard players get display.gates set_render_box

# show dialog
scoreboard players enable @s set_render_box
execute store success score .success set_render_box run function bcm:dialog/render_box_macro with storage bcm macro
execute if score .success set_render_box matches 1 run return 1

# catch error
trigger set_render_box set 1
return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t show dialog; sending default input"'}