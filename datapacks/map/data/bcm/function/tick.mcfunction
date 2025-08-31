# place object
execute as @e[type=#bcm:place,tag=init,tag=map_editor] at @s run function bcm:place/new_entity
scoreboard players set @a place_object_egg 0

# editor crates
execute as @a[gamemode=creative,predicate=bcm:pressing_sneak] at @s as @e[type=interaction,tag=editor_crate,distance=..8] run data merge entity @s {height:0,width:0}
execute as @a[gamemode=creative,predicate=!bcm:pressing_sneak] at @s as @e[type=interaction,tag=editor_crate,distance=..8] run data merge entity @s {height:1.01,width:1.01}
execute as @e[type=interaction,tag=editor_crate] at @s if data entity @s interaction run function bcm:place/crate_click
execute as @e[type=interaction,tag=editor_crate] at @s if data entity @s attack run setblock ~ ~ ~ air destroy

# rightclick
execute as @a[gamemode=creative] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:luck":{}}}} at @s run function bcm:rightclick

# delete objects when their block is destroyed, if:
# (1) we're currently ticking map editor objects (.enabled), and
# (2) we weren't specifically told not to do this (.hard)
execute unless score .hard select_area matches 1 if score .enabled select_area matches 1 as @e[type=block_display,tag=map_editor,tag=place,tag=generator] at @s if block ^ ^ ^1 #air run setblock ~ ~ ~ air destroy
execute unless score .hard select_area matches 1 if score .enabled select_area matches 1 as @e[type=#bcm:place,tag=map_editor,tag=place] at @s if block ~ ~ ~ #air run function bcm:place/delete
execute unless score .hard select_area matches 1 if score .enabled select_area matches 1 as @e[type=marker,tag=map_editor,tag=door,tag=!open,tag=!open_2] at @s if function bcm:place/door_check run function bcm:place/delete_door

# trigger
execute as @a[scores={set_render_box=1..}] run function bcm:trigger/render_box
execute as @a[scores={set_pos_and_rot=1..}] run function bcm:trigger/pos_and_rot
execute as @a[scores={set_pos_and_rot=..-1}] run function bcm:trigger/pos_and_rot
execute as @a[scores={set_item_generator=1..}] at @s run function bcm:trigger/item_generator
execute as @a[scores={set_item_generator=-1}] at @s run function bcm:trigger/item_generator_default
execute as @a[scores={set_item_generator=..-2}] at @s run function bcm:trigger/item_generator_cancel
execute as @a[scores={existing_map_response=1}] run function bcm:trigger/overwrite_existing_map
execute as @a[scores={master_menu=1..}] at @s run function bcm:trigger/master
scoreboard players enable @a[tag=in_map_editor] export_map
execute as @a[scores={export_map=1..}] at @s run function bcm:trigger/export
execute as @a[scores={targets_and_crates=1..}] run function bcm:trigger/targets_and_crates

# editor area boundaries
execute as @a[gamemode=creative,tag=in_map_editor,tag=!bypass_editor_boundary] at @s run function bcm:editor/boundary
tag @e[type=interaction] remove tmp_tped