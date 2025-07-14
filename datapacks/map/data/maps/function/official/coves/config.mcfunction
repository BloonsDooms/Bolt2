# offset -207 61 -525

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
    loadingBox:"-358.5 2 -644.5",\
    \
    spectatorBoundingBox:{area:"dx=-42,dy=21,dz=-72",origin:"-361. -1. -608."},\
    spectatorJoinLocation:"-369 11 -644 90 0",\
    \
    introCutscene:"-373 9 -644 90 0",\
    \
    tickingScript: "official/coves/scripts/tick",\
    \
    wallHeight: 12,\
    disabledItems:[],\
    \
    mapSize:{x1:-364, y1:0,  z1:-680,\
             x2:-402, y2:15, z2:-608},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"dz=0,dy=0,dx=0",origin:"0 0 0"}],\
    redSpawnBoundingBox:[{area:"dz=0,dy=0,dx=0",origin:"0 0 0"}],\
    \
    blueSpawn:"-395.5 7 -673.5 -45 0",\
    redSpawn:"-395.5 7 -613.5 -135 0",\
    \
    ctfInvulnTime:0,\
    infectionInvulnTime:0,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-376 1 -672",\
    redFlag: "-376 1 -616",\
    infectionGenerator:[0, 0, 0],\
}}

# List of item generators on the map, stored as x, y, z, facing.
# REWORK - 3rd generator needs to have "long" tag
data merge storage maps:active {gens:[\
    {pos:"-393 7 -617", rotation:0, generator_duration:45, generator_warmup:5},\
    {pos:"-393 7 -671", rotation:180, generator_duration:45, generator_warmup:5},\
    {pos:"-394 2 -644", rotation:90, generator_duration:70, generator_warmup:5},\
]}

data merge storage maps:active {targets:[{pos:"-402 4 -648"},{pos:"-401 4 -644"},{pos:"-399 5 -639"},{pos:"-397 3 -654"},{pos:"-397 3 -634"},{pos:"-397 5 -649"},{pos:"-397 6 -626"},{pos:"-396 3 -643"},{pos:"-394 4 -631"},{pos:"-394 5 -638"},{pos:"-394 8 -646"},{pos:"-394 8 -622"},{pos:"-393 3 -622"},{pos:"-393 7 -626"},{pos:"-392 3 -644"},{pos:"-392 7 -641"},{pos:"-391 5 -623"},{pos:"-391 7 -646"},{pos:"-390 3 -656"},{pos:"-390 3 -629"},{pos:"-390 5 -664"},{pos:"-390 6 -668"},{pos:"-390 6 -650"},{pos:"-389 1 -648"},{pos:"-389 1 -641"},{pos:"-389 3 -661"},{pos:"-389 3 -636"},{pos:"-388 3 -632"},{pos:"-388 7 -644"},{pos:"-387 10 -664"},{pos:"-387 10 -624"},{pos:"-386 1 -643"},{pos:"-386 3 -618"},{pos:"-386 7 -638"},{pos:"-386 12 -660"},{pos:"-386 12 -627"},{pos:"-385 3 -670"},{pos:"-385 7 -670"},{pos:"-385 8 -654"},{pos:"-385 8 -634"},{pos:"-385 9 -660"},{pos:"-384 3 -663"},{pos:"-384 3 -622"},{pos:"-384 7 -648"},{pos:"-383 3 -655"},{pos:"-383 3 -634"},{pos:"-383 9 -629"},{pos:"-383 10 -657"},{pos:"-382 3 -671"},{pos:"-382 3 -651"},{pos:"-382 3 -641"},{pos:"-382 3 -617"},{pos:"-382 7 -673"},{pos:"-381 3 -647"},{pos:"-381 5 -644"},{pos:"-381 5 -612"},{pos:"-381 7 -616"},{pos:"-381 8 -639"},{pos:"-381 9 -631"},{pos:"-379 3 -665"},{pos:"-379 3 -637"},{pos:"-379 4 -657"},{pos:"-379 9 -668"},{pos:"-379 9 -658"},{pos:"-379 9 -620"},{pos:"-378 3 -621"},{pos:"-378 4 -631"},{pos:"-378 8 -643"},{pos:"-378 8 -609"},{pos:"-378 9 -650"},{pos:"-378 9 -630"},{pos:"-377 3 -661"},{pos:"-377 3 -654"},{pos:"-377 3 -649"},{pos:"-377 3 -626"},{pos:"-376 3 -641"},{pos:"-376 9 -638"},{pos:"-376 11 -658"},{pos:"-375 3 -669"},{pos:"-375 7 -679"},{pos:"-375 8 -663"},{pos:"-375 8 -655"},{pos:"-375 8 -644"},{pos:"-375 8 -625"},{pos:"-375 12 -631"},{pos:"-374 3 -674"},{pos:"-374 3 -613"},{pos:"-373 3 -661"},{pos:"-373 3 -653"},{pos:"-373 3 -639"},{pos:"-373 3 -635"},{pos:"-373 7 -610"},{pos:"-373 9 -659"},{pos:"-373 9 -652"},{pos:"-373 9 -634"},{pos:"-373 9 -629"},{pos:"-372 3 -626"},{pos:"-372 9 -646"},{pos:"-372 9 -641"},{pos:"-372 10 -644"},{pos:"-372 13 -657"},{pos:"-371 3 -666"},{pos:"-371 6 -615"},{pos:"-371 9 -655"},{pos:"-371 9 -638"},{pos:"-371 13 -630"},{pos:"-370 2 -646"},{pos:"-370 2 -642"},{pos:"-370 5 -660"},{pos:"-370 6 -669"},{pos:"-370 6 -619"},{pos:"-370 9 -646"},{pos:"-370 9 -642"},{pos:"-370 9 -632"},{pos:"-369 9 -662"},{pos:"-369 9 -622"},{pos:"-369 11 -653"},{pos:"-369 11 -636"},{pos:"-368 7 -667"},{pos:"-368 9 -649"},{pos:"-367 6 -675"},{pos:"-367 6 -613"},{pos:"-367 8 -626"},{pos:"-367 9 -660"},{pos:"-367 9 -656"},{pos:"-367 9 -633"},{pos:"-365 9 -666"},{pos:"-364 9 -622"}]}