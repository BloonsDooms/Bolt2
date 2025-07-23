## place map
$function bcm:map/load_official {mapName:"$(mapName)"}


## get map config data
$function game:map/load_map with storage maps:list maps[{mapName:"$(mapName)"}]


## save area
# pos 1 (~ ~ ~)
summon marker ~ ~ ~ {Tags:["map_editor","pos1","render_box","save","init"]}
execute store result score .x1 calc run data get entity @n[type=marker,tag=pos1,tag=init] Pos[0]
execute store result score .y1 calc run data get entity @n[type=marker,tag=pos1,tag=init] Pos[1]
execute store result score .z1 calc run data get entity @n[type=marker,tag=pos1,tag=init] Pos[2]
# pos 2 (from structure size)
summon marker ~ ~ ~ {Tags:["map_editor","pos2","render_box","save","init"]}
execute store result storage bcm macro.x int 1 run data get storage item_structures save.size[0] .999999999
execute store result storage bcm macro.y int 1 run data get storage item_structures save.size[1] .999999999
execute store result storage bcm macro.z int 1 run data get storage item_structures save.size[2] .999999999
function bcm:xyz_string with storage bcm macro
execute as @n[type=marker,tag=pos2,tag=init] at @s run function bcm:tp with storage bcm tmp
data remove storage bcm tmp
data remove storage bcm macro

## single-point eggless objects
# TODO: make bcm:tp_convert
summon marker ~ ~ ~ {Tags:[tmp]}

# intro camera
data modify storage bcm macro.pos set from storage maps:active settings.introCutscene
execute as @n[type=marker,tag=tmp] at @s run function bcm:tp_convert with storage bcm macro
execute as @n[type=marker,tag=tmp] at @s run function bcm:place/intro_camera

# red spawnpoint
data modify storage bcm macro.pos set from storage maps:active spawn.redSpawn
execute as @n[type=marker,tag=tmp] at @s run function bcm:tp_convert with storage bcm macro
execute as @n[type=marker,tag=tmp] at @s run function bcm:place/red_spawnpoint

# blue spawnpoint
data modify storage bcm macro.pos set from storage maps:active spawn.blueSpawn
execute as @n[type=marker,tag=tmp] at @s run function bcm:tp_convert with storage bcm macro
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
data modify storage bcm macro.pos set from storage maps:active objectives.redFlag
execute as @n[type=block_display,tag=red_flag,tag=init] at @s run function bcm:tp_convert with storage bcm macro

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
data modify storage bcm macro.pos set from storage maps:active objectives.blueFlag
execute as @n[type=block_display,tag=blue_flag,tag=init] at @s run function bcm:tp_convert with storage bcm macro


## generators
# do similar thing as flags but recursive loop through gens array