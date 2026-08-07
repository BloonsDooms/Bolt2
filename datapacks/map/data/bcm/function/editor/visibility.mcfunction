# save area
execute if score display.save set_render_box matches 0 as @e[type=block_display,tag=save] at @s store result entity @s view_range float 10 if entity @a[predicate=bcm:showing_save]

# spawn areas
execute if score display.spawn set_render_box matches 0 as @e[type=block_display,tag=red_spawn] at @s store result entity @s view_range float 10 if entity @a[predicate=bcm:showing_spawns]
execute if score display.spawn set_render_box matches 0 as @e[type=block_display,tag=blue_spawn] at @s store result entity @s view_range float 10 if entity @a[predicate=bcm:showing_spawns]

# spawn points
execute if score display.spawnpoint set_render_box matches 0 as @e[type=block_display,tag=spawnpoint] at @s store result entity @s view_range float 10 if entity @a[predicate=bcm:showing_spawnpoints]

# glow flags
execute if score display.gens set_render_box matches 0 as @e[type=block_display,tag=place,tag=flag] at @s store result entity @s view_range float 10 if entity @a[predicate=bcm:showing_flags]

# glow generators
execute if score display.gens set_render_box matches 0 as @e[type=block_display,tag=generator] at @s store result entity @s view_range float 10 if entity @a[predicate=bcm:showing_generators]

# max wall height
execute if score display.wall_height set_render_box matches 0 as @e[type=block_display,tag=render_box,tag=wall_height] at @s store result entity @s view_range float 10 if entity @a[predicate=bcm:showing_wall_height]

# intro camera
execute if score display.camera set_render_box matches 0 as @e[type=item_display,tag=intro_camera] at @s store result entity @s view_range float 10 if entity @a[predicate=bcm:showing_camera]

# gates
execute if score display.gates set_render_box matches 0 as @e[type=interaction,tag=gate_interaction] at @s store result entity @s width float 1.01 if entity @a[predicate=bcm:showing_gates]
execute if score display.gates set_render_box matches 0 as @e[type=block_display,tag=map_editor,tag=gate] at @s store result entity @s view_range float 10 if entity @a[predicate=bcm:showing_gates]