#offset is -148 49 46
#partially tested

data remove storage maps:active {}
# Loading/Misc data
# loadingBox is important, it is where players are teleported to load the map before the game starts.
# spectatorBoundingBox is the area that spectators can fly around before being kicked to lobby.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
# introCutscene is where the cutscene takes place, it is stored as x, y, z, facing.
# wallHeight is max y level that walls can go to. Effectively this is the highest y level the player can stand at with walls.
# disabledItems disables items in CTF, currently only supports walls.

data merge storage maps:active {settings:{\
    loadingBox:"-368.5 -1 -385.5 0 0",\
    \
    spectatorBoundingBox:"x=-405,y=-9,z=-410,dx=41,dy=28,dz=47",\
    spectatorJoinLocation:"-374 8 -385 90 0",\
    \
    introCutscenePosition:"-393 2.5 -386",\
    introCutsceneAngle: "-90F, 0f",\
    introCutsceneFlipped: true,\
    \
    tickingScript: "",\
    \
    wallHeight: 12,\
    disabledItems:[],\
    \
    mapSize:{x1:-399, y1:-6,  z1:-363,\
             x2:-370, y2:10, z2:-409},\
}}


# Spawn, the bounding box is used for invlun time and afk detection.    official/valley/scripts/tick
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    redSpawnBoundingBox:[{area:"x=-374,y=9,z=-410,dx=-5,dy=-10,dz=4.5"}],\
    blueSpawnBoundingBox:[{area:"x=-374,y=9,z=-362,dx=-5,dy=-10,dz=-4.5"}],\
    \
    blueSpawn:"-376.5 4 -362.5 180 0",\
    redSpawn:"-376.5 4 -408.5 0 0",\
    \
    ctfInvulnTime:41,\
    infectionInvulnTime:41,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-389 -2 -370",\
    redFlag: "-389 -2 -402",\
    infectionGenerator:[0, 0, 0],\
}}

# List of item generators on the map, stored as x, y, z, facing.
data merge storage maps:active {gens:[\
    {pos:"-375 4 -366", rotation:0},\
    {pos:"-375 4 -406", rotation:180},\
]}

data merge storage maps:active {targets:[{pos:"-399 1 -402"},{pos:"-398 1 -399"},{pos:"-398 1 -373"},{pos:"-397 1 -395"},{pos:"-397 1 -377"},{pos:"-397 1 -370"},{pos:"-396 3 -404"},{pos:"-396 4 -386"},{pos:"-396 8 -386"},{pos:"-396 8 -381"},{pos:"-395 0 -398"},{pos:"-395 8 -391"},{pos:"-394 1 -403"},{pos:"-394 1 -394"},{pos:"-394 1 -378"},{pos:"-394 1 -369"},{pos:"-394 4 -386"},{pos:"-394 8 -389"},{pos:"-394 8 -382"},{pos:"-393 0 -400"},{pos:"-393 0 -372"},{pos:"-393 8 -392"},{pos:"-393 8 -380"},{pos:"-393 9 -384"},{pos:"-392 0 -396"},{pos:"-392 0 -388"},{pos:"-392 0 -384"},{pos:"-392 0 -376"},{pos:"-392 1 -402"},{pos:"-392 1 -370"},{pos:"-392 5 -368"},{pos:"-392 9 -386"},{pos:"-391 3 -386"},{pos:"-390 0 -390"},{pos:"-390 0 -382"},{pos:"-389 0 -402"},{pos:"-389 0 -397"},{pos:"-389 0 -393"},{pos:"-389 0 -379"},{pos:"-389 0 -375"},{pos:"-389 0 -370"},{pos:"-389 3 -385"},{pos:"-389 5 -402"},{pos:"-389 5 -370"},{pos:"-389 8 -400"},{pos:"-389 8 -372"},{pos:"-387 4 -388"},{pos:"-386 0 -403"},{pos:"-386 0 -388"},{pos:"-386 0 -384"},{pos:"-386 4 -386"},{pos:"-386 5 -401"},{pos:"-386 5 -371"},{pos:"-385 0 -398"},{pos:"-385 0 -374"},{pos:"-385 1 -394"},{pos:"-385 1 -390"},{pos:"-385 1 -382"},{pos:"-385 1 -378"},{pos:"-384 -5 -386"},{pos:"-384 4 -387"},{pos:"-384 5 -404"},{pos:"-383 -4 -391"},{pos:"-383 -4 -381"},{pos:"-383 -2 -379"},{pos:"-383 0 -402"},{pos:"-383 0 -396"},{pos:"-383 0 -388"},{pos:"-383 0 -384"},{pos:"-383 0 -376"},{pos:"-383 0 -370"},{pos:"-383 1 -381"},{pos:"-383 2 -393"},{pos:"-383 5 -402"},{pos:"-383 5 -370"},{pos:"-381 -4 -386"},{pos:"-381 0 -390"},{pos:"-381 0 -382"},{pos:"-381 1 -394"},{pos:"-381 1 -392"},{pos:"-381 1 -378"},{pos:"-381 3 -386"},{pos:"-381 5 -401"},{pos:"-380 0 -397"},{pos:"-380 0 -375"},{pos:"-380 5 -399"},{pos:"-380 5 -373"},{pos:"-379 0 -402"},{pos:"-379 0 -392"},{pos:"-379 0 -380"},{pos:"-378 0 -388"},{pos:"-378 0 -384"},{pos:"-378 3 -394"},{pos:"-378 3 -378"},{pos:"-378 4 -386"},{pos:"-377 0 -401"},{pos:"-377 0 -371"},{pos:"-377 5 -401"},{pos:"-377 5 -371"},{pos:"-377 6 -388"},{pos:"-377 6 -384"},{pos:"-377 8 -398"},{pos:"-377 8 -374"},{pos:"-376 0 -399"},{pos:"-375 0 -391"},{pos:"-375 0 -381"},{pos:"-375 4 -386"},{pos:"-375 4 -383"},{pos:"-374 0 -396"},{pos:"-374 0 -376"},{pos:"-374 4 -389"},{pos:"-373 6 -393"},{pos:"-373 6 -386"},{pos:"-373 6 -379"},{pos:"-372 5 -396"},{pos:"-372 5 -376"},{pos:"-371 5 -370"},{pos:"-371 6 -392"},{pos:"-371 6 -386"},{pos:"-371 6 -380"},{pos:"-370 6 -389"},{pos:"-370 6 -383"}]}