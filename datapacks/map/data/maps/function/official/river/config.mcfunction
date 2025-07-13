# offset is 381 21 -80
# only parially tested that offset

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
    loadingBox:"-170.5 1 -371.5",\
    \
    spectatorBoundingBox:"x=-95,y=-4,z=-337,dx=-65,dy=28,dz=-97",\
    spectatorJoinLocation:"-142 8 382 -90 0",\
    \
    introCutscenePosition:"-134 2 -383",\
    introCutsceneAngle: "-90F, 0f",\
    introCutsceneFlipped: true,\
    \
    tickingScript: "",\
    \
    wallHeight: 8,\
    disabledItems:[],\
    \
    mapSize:{x1:-159, y1:-1,  z1:-429,\
             x2:-94, y2:8, z2:-332},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"x=-106,y=2,z=-426,dx=-9,dy=10,dz=9"}],\
    redSpawnBoundingBox:[{area:"x=-148,y=2,z=-340,dx=9,dy=10,dz=-9"}],\
    \
    blueSpawn:"-108.5 2 -422.5 45 0",\
    redSpawn:"-144.5 2 -342.5 -135 0",\
    \
    ctfInvulnTime:40,\
    infectionInvulnTime:40,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-149 3 -415",\
    redFlag: "-105 3 -351",\
    infectionGenerator:[0, 0, 0],\
}}

# List of item generators on the map, stored as x, y, z, facing.
data merge storage maps:active {gens:[\
    {pos:"-140 2 -348", rotation:0, generator_duration:45, generator_warmup:5},\
    {pos:"-114 2 -418", rotation:180, generator_duration:45, generator_warmup:5},\
]}

# targets, generated with /function game:map/builder/targets {x_min, x_max, etc.}
data merge storage maps:active {targets:[{pos:"-157 5 -410"},{pos:"-155 5 -415"},{pos:"-153 1 -409"},{pos:"-152 3 -402"},{pos:"-152 5 -396"},{pos:"-150 5 -393"},{pos:"-150 5 -388"},{pos:"-149 3 -391"},{pos:"-149 5 -412"},{pos:"-149 7 -419"},{pos:"-147 0 -395"},{pos:"-147 5 -405"},{pos:"-146 1 -387"},{pos:"-145 1 -409"},{pos:"-145 5 -378"},{pos:"-143 1 -390"},{pos:"-142 4 -394"},{pos:"-142 5 -381"},{pos:"-141 1 -384"},{pos:"-141 2 -370"},{pos:"-141 3 -365"},{pos:"-141 5 -411"},{pos:"-140 3 -375"},{pos:"-140 3 -356"},{pos:"-140 4 -406"},{pos:"-137 0 -387"},{pos:"-137 3 -409"},{pos:"-137 5 -419"},{pos:"-136 0 -401"},{pos:"-136 3 -362"},{pos:"-135 1 -371"},{pos:"-135 3 -350"},{pos:"-135 5 -376"},{pos:"-134 0 -392"},{pos:"-134 1 -367"},{pos:"-133 2 -405"},{pos:"-133 2 -385"},{pos:"-133 3 -413"},{pos:"-133 5 -391"},{pos:"-132 0 -409"},{pos:"-131 0 -389"},{pos:"-131 5 -365"},{pos:"-130 0 -373"},{pos:"-130 1 -398"},{pos:"-130 1 -379"},{pos:"-129 0 -361"},{pos:"-129 5 -390"},{pos:"-129 5 -376"},{pos:"-128 0 -407"},{pos:"-128 3 -420"},{pos:"-128 3 -413"},{pos:"-128 3 -346"},{pos:"-127 4 -383"},{pos:"-126 1 -369"},{pos:"-126 3 -352"},{pos:"-125 0 -356"},{pos:"-125 5 -390"},{pos:"-125 7 -425"},{pos:"-124 0 -393"},{pos:"-124 0 -376"},{pos:"-124 5 -375"},{pos:"-123 0 -380"},{pos:"-123 5 -401"},{pos:"-123 7 -418"},{pos:"-122 3 -387"},{pos:"-121 0 -372"},{pos:"-121 2 -381"},{pos:"-121 2 -360"},{pos:"-121 3 -415"},{pos:"-121 3 -353"},{pos:"-120 5 -375"},{pos:"-119 0 -366"},{pos:"-119 1 -399"},{pos:"-118 0 -380"},{pos:"-118 3 -357"},{pos:"-118 5 -390"},{pos:"-117 5 -347"},{pos:"-116 3 -408"},{pos:"-114 2 -396"},{pos:"-114 3 -404"},{pos:"-113 4 -360"},{pos:"-113 5 -352"},{pos:"-112 4 -373"},{pos:"-111 5 -388"},{pos:"-110 1 -379"},{pos:"-110 1 -356"},{pos:"-110 2 -367"},{pos:"-110 5 -350"},{pos:"-108 0 -371"},{pos:"-107 5 -361"},{pos:"-105 1 -363"},{pos:"-105 2 -376"},{pos:"-105 5 -353"},{pos:"-105 7 -346"},{pos:"-104 5 -372"},{pos:"-102 4 -359"},{pos:"-101 5 -378"},{pos:"-100 1 -356"},{pos:"-100 5 -366"},{pos:"-98 5 -356"},{pos:"-98 5 -350"}]}