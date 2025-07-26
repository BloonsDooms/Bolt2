## save area
# pos 1 (~ ~ ~)
summon marker ~ ~ ~ {Tags:["map_editor","pos1","render_box","save","init"]}
# pos 2 (from structure size)
summon marker ~ ~ ~ {Tags:["map_editor","pos2","render_box","save","init"]}
execute store result storage bcm macro.x int 1 run data get storage item_structures save.size[0] .999999999
execute store result storage bcm macro.y int 1 run data get storage item_structures save.size[1] .999999999
execute store result storage bcm macro.z int 1 run data get storage item_structures save.size[2] .999999999
function bcm:util/xyz_string with storage bcm macro
execute as @n[type=marker,tag=pos2,tag=init] run function bcm:util/tp with storage bcm tmp
data remove storage bcm tmp
data remove storage bcm macro


## single-point eggless objects
summon marker ~ ~ ~ {Tags:[tmp]}

# intro camera
data modify storage bcm macro.pos set from storage bcm map.intro_camera
execute as @n[type=marker,tag=tmp] run function bcm:map/edit/tp_convert with storage bcm macro
execute as @n[type=marker,tag=tmp] at @s run function bcm:place/intro_camera

# red spawnpoint
data modify storage bcm macro.pos set from storage bcm map.red_spawnpoint
execute as @n[type=marker,tag=tmp] run function bcm:map/edit/tp_convert with storage bcm macro
execute as @n[type=marker,tag=tmp] at @s run function bcm:place/red_spawnpoint

# blue spawnpoint
data modify storage bcm macro.pos set from storage bcm map.blue_spawnpoint
execute as @n[type=marker,tag=tmp] run function bcm:map/edit/tp_convert with storage bcm macro
execute as @n[type=marker,tag=tmp] at @s run function bcm:place/blue_spawnpoint

kill @n[type=marker,tag=tmp]


## flags
# red flag (entity data copied from bcm:give/place/red_flag)
summon block_display ~ ~ ~ {\
  Tags:["map_editor","place","red_flag","flag","init"],\
  block_state:{\
    Name:"red_banner",\
    Properties:{rotation:"0"}\
  },\
  Glowing:1b,\
  glow_color_override:16733525,\
  Rotation:[0f,0f],\
  transformation:{\
    left_rotation:[0f,0f,0f,1f],\
    right_rotation:[0f,0f,0f,1f],\
    scale:[1f,1f,1f],\
    translation:[-.5f,0f,-.5f]\
  },\
  view_range:0f\
}
data modify storage bcm macro.pos set from storage bcm map.red_flag
execute as @n[type=block_display,tag=red_flag,tag=init] run function bcm:map/edit/tp_convert with storage bcm macro

# blue flag (entity data copied from bcm:give/place/blue_flag)
summon block_display ~ ~ ~ {\
  Tags:["map_editor","place","blue_flag","flag","init"],\
  block_state:{\
    Name:"blue_banner",\
    Properties:{rotation:"0"}\
  },\
  Glowing:1b,\
  glow_color_override:5592575,\
  Rotation:[0f,0f],\
  transformation:{\
    left_rotation:[0f,0f,0f,1f],\
    right_rotation:[0f,0f,0f,1f],\
    scale:[1f,1f,1f],\
    translation:[-.5f,0f,-.5f]\
  },\
  view_range:0f\
}
data modify storage bcm macro.pos set from storage bcm map.blue_flag
execute as @n[type=block_display,tag=blue_flag,tag=init] run function bcm:map/edit/tp_convert with storage bcm macro

# flags are saved 1 block below banner
execute as @e[type=block_display,tag=flag,tag=init] at @s run tp ~ ~1 ~


## generators
data modify storage bcm map.tmp_generators set from storage bcm map.generators
execute if data storage bcm map.tmp_generators[] run function bcm:place/generator_auto_loop
data remove storage bcm map.tmp_generators


## spawn areas
# only loads first bounding box

# red
function bcm:util/parse_area_selector with storage bcm map.red_spawn
data modify storage bcm macro.origin set from storage bcm map.red_spawn.start
data modify storage bcm macro.tag set value "red_spawn"
function bcm:render_box/box_from_area with storage bcm macro

# blue
function bcm:util/parse_area_selector with storage bcm map.blue_spawn
data modify storage bcm macro.origin set from storage bcm map.blue_spawn.start
data modify storage bcm macro.tag set value "blue_spawn"
function bcm:render_box/box_from_area with storage bcm macro