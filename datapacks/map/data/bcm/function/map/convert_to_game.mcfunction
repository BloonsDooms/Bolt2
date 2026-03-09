### THIS CONVERTS MAP DATA FROM SHUBA'S SYSTEM TO AIDEN'S SYSTEM
# copies from "minecraft:bcm map" to "maps:active {}"
# editor doesn't have disabled items or invulnerability times

# you can't directly set/delete root objects
data remove storage maps:active settings
data remove storage maps:active spawn
data remove storage maps:active objectives
data remove storage maps:active gens
data remove storage maps:active targets
data remove storage maps:active crates


## origin
# all other coordinates are saved relative to this point unless stated otherwise
# UUID for entitiy at origin: fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6f & UUID:[I;-41875525,-1040560673,-1191259896,2107965295]
data modify storage maps:active origin set from storage bcm map.load_point
#execute unless data storage bcm map.load_point run say activating UNSAVED map - only use briefly for testing, and REMEMBER TO SAVE!
#execute unless data storage bcm map.load_point run data modify storage maps:active origin set from storage bcm map.save.start


## settings
data modify storage maps:active settings.loadingBox set from storage bcm map.intro_camera

# "x1 y1 z1" + "dx,dy,dz" -> {x1,y1,z1,x2,y2,z2}
# converts to ABSOLUTE coordinates
# this data is reused for settings.mapSize
execute summon marker run function bcm:map/parse_load_point with storage bcm map
function bcm:util/parse_area_selector with storage bcm map.save
function bcm:util/area_to_int with storage bcm macro
# extend spectator box 8 blocks beyond edge of build
# might change in the future to be per map?
scoreboard players set spectatorBox.extend calc 8
scoreboard players operation spectatorBox.x1 calc = .x1 calc
scoreboard players operation spectatorBox.y1 calc = .y1 calc
scoreboard players operation spectatorBox.z1 calc = .z1 calc
scoreboard players operation spectatorBox.x calc = .x calc
scoreboard players operation spectatorBox.y calc = .y calc
scoreboard players operation spectatorBox.z calc = .z calc
# origin
execute store result storage bcm tmp.x int 1 run scoreboard players operation spectatorBox.x1 calc -= spectatorBox.extend calc
execute store result storage bcm tmp.y int 1 run scoreboard players operation spectatorBox.y1 calc -= spectatorBox.extend calc
execute store result storage bcm tmp.z int 1 run scoreboard players operation spectatorBox.z1 calc -= spectatorBox.extend calc
function bcm:util/xyz_string_abs with storage bcm tmp
data modify storage maps:active settings.spectatorBoundingBox.origin set from storage bcm tmp.pos
# area
execute store result storage bcm tmp.dx int 1 run scoreboard players operation spectatorBox.x calc += spectatorBox.extend calc
execute store result storage bcm tmp.dy int 1 run scoreboard players operation spectatorBox.y calc += spectatorBox.extend calc
execute store result storage bcm tmp.dz int 1 run scoreboard players operation spectatorBox.z calc += spectatorBox.extend calc
function bcm:util/entity_selector_string with storage bcm tmp
data modify storage maps:active settings.spectatorBoundingBox.area set from storage bcm tmp.selector
data remove storage bcm tmp
data modify storage maps:active settings.spectatorJoinLocation set from storage bcm map.intro_camera

data modify storage maps:active settings.introCutscene set from storage bcm map.intro_camera

# no tickingScript

data modify storage maps:active settings.wallHeight set from storage bcm map.max_wall_height
data modify storage maps:active settings.disabledItems set value []
# reusing results from above here
scoreboard players add .x calc 1
scoreboard players add .y calc 1
scoreboard players add .z calc 1
execute store result storage maps:active settings.mapSize.x2 int 1 run scoreboard players operation .x calc += .x1 calc
execute store result storage maps:active settings.mapSize.y2 int 1 run scoreboard players operation .y calc += .y1 calc
execute store result storage maps:active settings.mapSize.z2 int 1 run scoreboard players operation .z calc += .z1 calc


## spawn
# DIFFERENT: bounding box origin
data modify storage maps:active spawn.redSpawnBoundingBox set value [{}]
data modify storage maps:active spawn.redSpawnBoundingBox[0].area set from storage bcm map.red_spawn.area
data modify storage maps:active spawn.redSpawnBoundingBox[0].origin set from storage bcm map.red_spawn.start
data modify storage maps:active spawn.blueSpawnBoundingBox set value [{}]
data modify storage maps:active spawn.blueSpawnBoundingBox[0].area set from storage bcm map.blue_spawn.area
data modify storage maps:active spawn.blueSpawnBoundingBox[0].origin set from storage bcm map.blue_spawn.start

# REWORK this needs to be changed to absolute coordinates, teleporting the player every tick with relative coordinates leads to client side desync.
# I would fix this right now but my brain is not working, moving to an easier problem and coming back later.
data modify storage maps:active spawn.redSpawn set from storage bcm map.red_spawnpoint
data modify storage maps:active spawn.blueSpawn set from storage bcm map.blue_spawnpoint

data modify storage maps:active spawn.ctfInvulnTime set value 40
data modify storage maps:active spawn.infectionInvulnTime set value 40


## objectives
data modify storage maps:active objectives.redFlag set from storage bcm map.red_flag
data modify storage maps:active objectives.blueFlag set from storage bcm map.blue_flag
# no infection generator (always at blue flag)


## gens
# DIFFERENT: time between items and warmup delay
data modify storage maps:active gens set from storage bcm map.generators


## targets & crates
data modify storage maps:active targets set from storage bcm map.targets
data modify storage maps:active crates set from storage bcm map.crates