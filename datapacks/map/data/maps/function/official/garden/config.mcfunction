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
    loadingBox:"-150.5 3.0 -151.5",\
    \
    spectatorBoundingBox:"x=-176,y=-4,z=-208,dx=80,dy=30,dz=110",\
    spectatorJoinLocation:"-125.5 7 -145.5 90 0",\
    \
    introCutscenePosition:"-124 4.5 -146",\
    introCutsceneAngle: "90F, 0f",\
    introCutsceneFlipped: false,\
    \
    tickingScript: "",\
    \
    wallHeight: 18,\
    disabledItems:[],\
    \
    mapSize:{x1:-158, y1:-2,  z1:-193,\
             x2:-107, y2:9, z2:-99},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"x=-115,y=2,z=-197,dx=-7,dy=7,dz=12"}],\
    redSpawnBoundingBox:[{area:"x=-151,y=2,z=-95,dx=7,dy=7,dz=-12"}],\
    \
    blueSpawn:"-118.5 3 -193 0 0",\
    redSpawn:"-146.5 3 -98 180 0",\
    \
    ctfInvulnTime:35,\
    infectionInvulnTime:35,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-139 -1 -180",\
    redFlag: "-127 -1 -112",\
    infectionGenerator:[0, 0, 0],\
}}

# List of item generators on the map, stored as x, y, z, facing.
data merge storage maps:active {gens:[\
    {pos:"-144 3 -107", rotation:0, generator_duration:45, generator_warmup:5},\
    {pos:"-122 3 -185", rotation:180, generator_duration:45, generator_warmup:5},\
]}

data merge storage maps:active {targets:[{pos:"-158 4 -160"},{pos:"-155 4 -164"},{pos:"-155 4 -118"},{pos:"-153 4 -156"},{pos:"-152 2 -121"},{pos:"-152 4 -174"},{pos:"-152 8 -136"},{pos:"-151 4 -182"},{pos:"-151 4 -111"},{pos:"-151 5 -132"},{pos:"-150 4 -172"},{pos:"-149 8 -150"},{pos:"-148 7 -120"},{pos:"-148 8 -144"},{pos:"-147 2 -126"},{pos:"-147 4 -170"},{pos:"-147 4 -164"},{pos:"-147 5 -160"},{pos:"-146 2 -113"},{pos:"-146 4 -180"},{pos:"-146 4 -153"},{pos:"-144 2 -118"},{pos:"-144 4 -144"},{pos:"-144 4 -139"},{pos:"-143 4 -187"},{pos:"-143 4 -149"},{pos:"-143 5 -167"},{pos:"-141 4 -173"},{pos:"-141 5 -136"},{pos:"-141 6 -160"},{pos:"-140 2 -113"},{pos:"-140 6 -131"},{pos:"-140 6 -122"},{pos:"-139 3 -138"},{pos:"-139 4 -168"},{pos:"-138 2 -137"},{pos:"-138 4 -148"},{pos:"-138 6 -155"},{pos:"-137 4 -153"},{pos:"-136 3 -143"},{pos:"-136 6 -148"},{pos:"-136 6 -121"},{pos:"-135 3 -184"},{pos:"-135 3 -113"},{pos:"-135 4 -164"},{pos:"-135 6 -190"},{pos:"-134 5 -160"},{pos:"-134 6 -173"},{pos:"-134 6 -166"},{pos:"-134 6 -144"},{pos:"-133 4 -128"},{pos:"-133 5 -146"},{pos:"-132 2 -109"},{pos:"-132 3 -179"},{pos:"-132 5 -132"},{pos:"-132 6 -125"},{pos:"-132 6 -119"},{pos:"-132 6 -102"},{pos:"-131 6 -148"},{pos:"-130 5 -145"},{pos:"-130 6 -171"},{pos:"-128 2 -177"},{pos:"-128 3 -158"},{pos:"-128 4 -148"},{pos:"-128 6 -137"},{pos:"-127 4 -124"},{pos:"-127 6 -170"},{pos:"-126 4 -144"},{pos:"-126 6 -161"},{pos:"-125 4 -119"},{pos:"-125 4 -105"},{pos:"-125 6 -156"},{pos:"-125 6 -132"},{pos:"-123 4 -149"},{pos:"-123 5 -160"},{pos:"-122 4 -142"},{pos:"-122 5 -134"},{pos:"-120 2 -165"},{pos:"-120 4 -119"},{pos:"-120 4 -111"},{pos:"-119 4 -157"},{pos:"-119 4 -138"},{pos:"-119 4 -127"},{pos:"-119 5 -132"},{pos:"-119 8 -147"},{pos:"-118 7 -172"},{pos:"-116 4 -107"},{pos:"-116 8 -152"},{pos:"-116 9 -143"},{pos:"-115 4 -120"},{pos:"-114 5 -161"},{pos:"-113 4 -136"},{pos:"-113 4 -128"},{pos:"-113 4 -115"},{pos:"-112 4 -168"},{pos:"-111 4 -175"},{pos:"-109 4 -132"}]}