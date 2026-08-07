## parse input right to left
# save selection
execute store result score .value set_render_box run scoreboard players remove @s set_render_box 1
execute store result score display.save set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute if score .value set_render_box matches 1 as @e[type=block_display,tag=render_box,tag=save] run data modify entity @s view_range set value 10f

# spawns
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.spawn set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute if score .value set_render_box matches 1 as @e[type=block_display,tag=render_box,tag=red_spawn] run data modify entity @s view_range set value 10f
execute if score .value set_render_box matches 1 as @e[type=block_display,tag=render_box,tag=blue_spawn] run data modify entity @s view_range set value 10f

# spawn points
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.spawnpoint set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute if score .value set_render_box matches 1 as @e[type=block_display,tag=spawnpoint] run data modify entity @s view_range set value 10f

# glow flags
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.flags set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute if score .value set_render_box matches 1 as @e[type=block_display,tag=place,tag=flag] run data modify entity @s view_range set value 10f

# glow generators
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.gens set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute if score .value set_render_box matches 1 as @e[type=block_display,tag=generator] run data modify entity @s view_range set value 10f

# max wall height
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.wall_height set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute if score .value set_render_box matches 1 as @e[type=block_display,tag=render_box,tag=wall_height] run data modify entity @s view_range set value 10f

# intro camera
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.camera set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute if score .value set_render_box matches 1 as @e[type=item_display,tag=intro_camera] run data modify entity @s view_range set value 10f

# gates
execute store result score .value set_render_box run scoreboard players operation @s set_render_box /= .10 .num
execute store result score display.gates set_render_box run scoreboard players operation .value set_render_box %= .10 .num
execute if score .value set_render_box matches 1 as @e[type=interaction,tag=gate_interaction] run data modify entity @s width set value 1.01f
execute if score .value set_render_box matches 1 as @e[type=block_display,tag=map_editor,tag=gate] run data modify entity @s view_range set value 10f

scoreboard players reset @s set_render_box