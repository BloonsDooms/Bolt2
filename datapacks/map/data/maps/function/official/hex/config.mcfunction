# move this to a different file once loading data is setup
data remove storage maps:active {}
# Loading/Misc data
# loadingBox is important, it is where players are teleported to load the map before the game starts.
# spectatorBoundingBox is the area that spectators can fly around before being kicked to lobby.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
# introCutscene is where the cutscene takes place, it is stored as x, y, z, facing.
# wallHeight is max y level that walls can go to. Effectively this is the highest y level the player can stand at with walls.
# disabledItems disables items in CTF, currently only supports walls.

data merge storage maps:active {settings:{\
    loadingBox:"-362.5 2 -119.5 0 0",\
    \
    spectatorBoundingBox:"x=-401,y=-1,z=-145,dx=31,dy=27,dz=46",\
    spectatorJoinLocation:"-373 12 -122 90 0",\
    \
    introCutscene:"-373 7 -122 90 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 12,\
    disabledItems:[],\
    \
    mapSize:{x1:-401, y1:1,  z1:-145,\
             x2:-372, y2:21, z2:-100},\
}}


# Spawn, the bounding box is used for invlun time and afk detection.    official/valley/scripts/tick
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"x=-371,y=6,z=-144,dx=-11,dy=10,dz=9"}],\
    redSpawnBoundingBox:[{area:"x=-400,y=6,z=-98,dx=9,dy=10,dz=-11"}],\
    \
    blueSpawn:"-375.5 6 -140.5 45 0",\
    redSpawn:"-396.5 6 -102.5 -135 0",\
    \
    ctfInvulnTime:44,\
    infectionInvulnTime:44,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-397 6 -141",\
    redFlag: "-376 6 -103",\
    infectionGenerator:[0, 0, 0],\
}}

# List of item generators on the map, stored as x, y, z, facing.
data merge storage maps:active {gens:[\
    {pos:"-393 6 -107", rotation:0, generator_duration:45, generator_warmup:5},\
    {pos:"-380 6 -137", rotation:180, generator_duration:45, generator_warmup:5},\
]}

data merge storage maps:active {targets:[{pos:"-400 5 -129"},{pos:"-400 7 -123"},{pos:"-400 7 -117"},{pos:"-400 7 -113"},{pos:"-400 8 -141"},{pos:"-400 8 -136"},{pos:"-399 3 -132"},{pos:"-399 4 -126"},{pos:"-399 7 -131"},{pos:"-399 7 -120"},{pos:"-399 8 -139"},{pos:"-399 8 -134"},{pos:"-398 6 -121"},{pos:"-397 2 -131"},{pos:"-397 2 -127"},{pos:"-397 2 -124"},{pos:"-397 5 -139"},{pos:"-397 5 -129"},{pos:"-397 6 -136"},{pos:"-397 6 -124"},{pos:"-397 8 -144"},{pos:"-396 2 -121"},{pos:"-396 2 -115"},{pos:"-396 3 -134"},{pos:"-396 8 -140"},{pos:"-395 1 -112"},{pos:"-395 5 -141"},{pos:"-395 7 -118"},{pos:"-395 8 -143"},{pos:"-394 2 -106"},{pos:"-393 4 -137"},{pos:"-393 8 -118"},{pos:"-393 10 -129"},{pos:"-392 2 -132"},{pos:"-392 2 -127"},{pos:"-392 2 -123"},{pos:"-392 2 -121"},{pos:"-392 2 -115"},{pos:"-392 3 -136"},{pos:"-392 6 -141"},{pos:"-392 6 -125"},{pos:"-392 7 -124"},{pos:"-392 8 -144"},{pos:"-391 7 -118"},{pos:"-390 2 -134"},{pos:"-390 2 -122"},{pos:"-390 3 -140"},{pos:"-390 8 -143"},{pos:"-389 6 -118"},{pos:"-389 7 -126"},{pos:"-388 2 -138"},{pos:"-388 2 -130"},{pos:"-388 2 -127"},{pos:"-388 2 -115"},{pos:"-388 2 -109"},{pos:"-388 2 -103"},{pos:"-388 3 -143"},{pos:"-388 6 -111"},{pos:"-388 6 -106"},{pos:"-388 6 -100"},{pos:"-388 10 -123"},{pos:"-388 10 -121"},{pos:"-387 2 -122"},{pos:"-387 7 -118"},{pos:"-387 11 -122"},{pos:"-386 2 -122"},{pos:"-386 7 -126"},{pos:"-386 11 -122"},{pos:"-385 2 -141"},{pos:"-385 2 -135"},{pos:"-385 2 -129"},{pos:"-385 2 -117"},{pos:"-385 2 -114"},{pos:"-385 2 -106"},{pos:"-385 3 -101"},{pos:"-385 6 -144"},{pos:"-385 6 -138"},{pos:"-385 6 -133"},{pos:"-385 10 -123"},{pos:"-385 10 -121"},{pos:"-384 6 -126"},{pos:"-384 7 -118"},{pos:"-383 2 -122"},{pos:"-383 2 -110"},{pos:"-383 3 -104"},{pos:"-383 8 -101"},{pos:"-382 7 -126"},{pos:"-381 2 -129"},{pos:"-381 2 -123"},{pos:"-381 2 -121"},{pos:"-381 2 -117"},{pos:"-381 2 -112"},{pos:"-381 3 -108"},{pos:"-381 6 -119"},{pos:"-381 6 -103"},{pos:"-381 7 -120"},{pos:"-381 8 -100"},{pos:"-380 4 -107"},{pos:"-380 8 -126"},{pos:"-380 10 -115"},{pos:"-379 2 -138"},{pos:"-378 1 -132"},{pos:"-378 5 -103"},{pos:"-378 7 -126"},{pos:"-378 8 -101"},{pos:"-377 2 -129"},{pos:"-377 2 -123"},{pos:"-377 3 -110"},{pos:"-377 8 -104"},{pos:"-376 2 -120"},{pos:"-376 2 -117"},{pos:"-376 2 -113"},{pos:"-376 5 -115"},{pos:"-376 5 -105"},{pos:"-376 6 -120"},{pos:"-376 6 -108"},{pos:"-376 7 -126"},{pos:"-376 8 -100"},{pos:"-375 6 -123"},{pos:"-374 3 -112"},{pos:"-374 4 -118"},{pos:"-374 7 -124"},{pos:"-374 7 -113"},{pos:"-374 8 -110"},{pos:"-374 8 -105"},{pos:"-373 7 -131"},{pos:"-373 7 -127"},{pos:"-373 7 -121"}]}