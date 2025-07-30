scoreboard objectives add set_render_box trigger
execute unless score display.save set_render_box matches 0 run scoreboard players set display.save set_render_box 1
execute unless score display.spawn set_render_box matches 0 run scoreboard players set display.spawn set_render_box 1
execute unless score display.spawnpoint set_render_box matches 0 run scoreboard players set display.spawnpoint set_render_box 1
execute unless score display.flags set_render_box matches 0 run scoreboard players set display.flags set_render_box 1
execute unless score display.gens set_render_box matches 0 run scoreboard players set display.gens set_render_box 1
execute unless score display.wall_height set_render_box matches 0 run scoreboard players set display.wall_height set_render_box 1
execute unless score display.camera set_render_box matches 0 run scoreboard players set display.camera set_render_box 1
scoreboard objectives add set_pos_and_rot trigger
scoreboard objectives add set_item_generator trigger
scoreboard objectives add existing_map_response trigger
scoreboard objectives add master_menu trigger
scoreboard objectives add export_map trigger

scoreboard objectives add calc dummy
scoreboard players set #-1 calc -1
scoreboard players set #2 calc 2
scoreboard players set #4 calc 4
scoreboard players set #5 calc 5
scoreboard players set #10 calc 10
scoreboard players set #20 calc 20
scoreboard players set #60 calc 60
scoreboard players set #90 calc 90
scoreboard players set #100 calc 100
scoreboard players set #1000 calc 1000

# save rate is very constant -> very accurate save ETA
# @ 5k blocks: 12500 blocks/s
# @ 500k blocks: 12000 blocks/s
# @ 6M blocks: 11300 blocks/s
scoreboard players set .save_blocks/s calc 11000

# load rate changes wildly -> inaccurate load ETA
# @ 47k entries (500k): 11000 entries/s
# @ 190k entries (6M): 4000 entries/s
scoreboard players set .load_entries/s calc 4000

scoreboard objectives add select_area dummy
scoreboard objectives add place_object dummy
scoreboard objectives add place_object_egg minecraft.used:minecraft.panda_spawn_egg

scoreboard objectives add bcm_generator_time dummy
scoreboard objectives add bcm_generator_warmup dummy
scoreboard objectives add bcm_crate_difficulty dummy

# map placer
# UUID is 1 less than active map origin entity
execute unless entity fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e run forceload add 544 32
execute unless entity fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e run summon marker 544 0 32 {UUID:[I;-41875525,-1040560673,-1191259896,2107965294]}

# keep it simple - forceload the whole map editor area all the time
function bcm:editor/forceload