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
    loadingBox:"-146.5 1.00 389.5",\
    \
    spectatorBoundingBox:"x=-112, y=-2, z=354, dx=-49, dy=23, dz=59",\
    spectatorJoinLocation:"-115 8 -381 45 0",\
    \
    introCutscenePosition:"-142.5 6 382",\
    introCutsceneAngle: "-90F, 0f",\
    introCutsceneFlipped: true,\
    \
    tickingScript: "",\
    \
    wallHeight: 10,\
    disabledItems:["walls"],\
    \
    mapSize:{x1:-112, y1:0,  z1:409,\
             x2:-230, y2:10, z2:355},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"x=-139, y=6, z=404, dx=20, dy=10, dz=10"}],\
    redSpawnBoundingBox:[{area:"x=-139, y=6, z=361, dx=20, dy=10, dz=-10"}],\
    \
    blueSpawn:"-108.5 2 -422.5 45 0",\
    redSpawn:"-144.5 2 -342.5 135 0",\
    \
    ctfInvulnTime:40,\
    infectionInvulnTime:40,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-131 3 399",\
    redFlag: "-131 3 365",\
    infectionGenerator:[0, 0, 0],\
}}

# List of item generators on the map, stored as x, y, z, facing.
data merge storage maps:active {gens:[\
    {pos:"-133 7 404", rotation:0, generator_duration:45, generator_warmup:5},\
    {pos:"-129 7 360", rotation:180, generator_duration:45, generator_warmup:5},\
]}

# targets, generated with /function game:map/builder/targets
data merge storage maps:active {targets:[{pos:"-150 2 377"},{pos:"-149 2 375"},{pos:"-148 2 372"},{pos:"-147 3 366"},{pos:"-146 2 380"},{pos:"-145 2 382"},{pos:"-145 6 372"},{pos:"-143 1 397"},{pos:"-143 2 386"},{pos:"-143 3 368"},{pos:"-142 1 392"},{pos:"-142 2 378"},{pos:"-142 3 401"},{pos:"-142 6 374"},{pos:"-141 2 376"},{pos:"-141 2 383"},{pos:"-140 3 364"},{pos:"-140 3 387"},{pos:"-140 4 369"},{pos:"-140 7 372"},{pos:"-140 7 375"},{pos:"-139 2 375"},{pos:"-139 2 380"},{pos:"-139 3 367"},{pos:"-139 3 394"},{pos:"-138 1 384"},{pos:"-138 1 390"},{pos:"-137 1 397"},{pos:"-137 2 371"},{pos:"-136 1 381"},{pos:"-136 1 386"},{pos:"-136 5 365"},{pos:"-136 5 379"},{pos:"-135 2 377"},{pos:"-135 5 368"},{pos:"-135 5 394"},{pos:"-135 5 401"},{pos:"-135 6 372"},{pos:"-134 1 391"},{pos:"-134 5 365"},{pos:"-134 5 376"},{pos:"-134 5 397"},{pos:"-134 6 389"},{pos:"-133 5 362"},{pos:"-133 5 376"},{pos:"-133 5 392"},{pos:"-133 9 383"},{pos:"-132 5 369"},{pos:"-132 5 388"},{pos:"-132 8 380"},{pos:"-131 1 382"},{pos:"-131 5 374"},{pos:"-131 5 378"},{pos:"-131 5 385"},{pos:"-131 5 396"},{pos:"-131 9 382"},{pos:"-130 5 372"},{pos:"-130 5 393"},{pos:"-130 8 384"},{pos:"-129 5 366"},{pos:"-129 5 377"},{pos:"-129 5 389"},{pos:"-129 9 381"},{pos:"-128 1 372"},{pos:"-128 1 382"},{pos:"-128 5 363"},{pos:"-128 5 371"},{pos:"-128 5 388"},{pos:"-128 5 397"},{pos:"-128 5 402"},{pos:"-127 5 370"},{pos:"-127 6 374"},{pos:"-127 6 391"},{pos:"-126 1 380"},{pos:"-126 5 385"},{pos:"-126 5 399"},{pos:"-125 1 367"},{pos:"-125 2 384"},{pos:"-125 2 388"},{pos:"-125 3 397"},{pos:"-125 5 365"},{pos:"-124 1 376"},{pos:"-124 1 381"},{pos:"-124 2 393"},{pos:"-123 1 373"},{pos:"-123 3 363"},{pos:"-122 3 370"},{pos:"-122 3 383"},{pos:"-122 3 400"},{pos:"-122 4 365"},{pos:"-122 4 395"},{pos:"-122 7 390"},{pos:"-122 7 393"},{pos:"-121 2 377"},{pos:"-121 2 380"},{pos:"-120 1 368"},{pos:"-120 3 362"},{pos:"-120 3 397"},{pos:"-120 6 392"},{pos:"-119 1 374"},{pos:"-119 2 386"},{pos:"-119 3 400"},{pos:"-118 6 390"},{pos:"-115 2 384"},{pos:"-115 3 397"},{pos:"-113 2 393"},{pos:"-112 2 389"}]}