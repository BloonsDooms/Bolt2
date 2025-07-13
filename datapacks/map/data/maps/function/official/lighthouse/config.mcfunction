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
    loadingBox:"-392.5 3.00 358.5",\
    \
    spectatorBoundingBox:"x=-343, y=0, z=355, dx=-84, dy=26, dz=52",\
    spectatorJoinLocation:"-389 10 381 -90 0",\
    \
    introCutscene:"-374 7 381 90 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 13,\
    disabledItems:[],\
    \
    mapSize:{x1:-351, y1:2,  z1:358,\
             x2:-419, y2:13, z2:404},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"x=-425,y=-3,z=371,dx=12,dy=10,dz=7"}],\
    redSpawnBoundingBox:[{area:"x=-345,y=-3,z=391,dx=-12,dy=10,dz=-7"}],\
    \
    blueSpawn:"-422.5 3.5 375.5 -90 8.3",\
    redSpawn:"-346.5 3.5 387.5 90 8.3",\
    \
    ctfInvulnTime:30,\
    infectionInvulnTime:30,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-407 1 395",\
    redFlag: "-363 1 367",\
    infectionGenerator:[0, 0, 0],\
}}

# List of item generators on the map, stored as x, y, z, facing.
data merge storage maps:active {gens:[\
    {pos:"-413 2 378", rotation:90, generator_duration:45, generator_warmup:5},\
    {pos:"-357 2 384", rotation:-90, generator_duration:45, generator_warmup:5},\
]}


data merge storage maps:active {targets:[{pos:"-416 5 388"},{pos:"-415 6 396"},{pos:"-414 6 391"},{pos:"-412 3 379"},{pos:"-411 3 387"},{pos:"-411 3 393"},{pos:"-410 7 389"},{pos:"-409 3 397"},{pos:"-409 7 382"},{pos:"-408 3 391"},{pos:"-408 5 403"},{pos:"-407 3 381"},{pos:"-405 3 398"},{pos:"-405 5 392"},{pos:"-404 3 386"},{pos:"-403 3 395"},{pos:"-403 4 377"},{pos:"-403 5 390"},{pos:"-402 5 371"},{pos:"-402 7 389"},{pos:"-402 7 400"},{pos:"-402 8 395"},{pos:"-401 5 392"},{pos:"-401 5 404"},{pos:"-401 9 378"},{pos:"-400 4 382"},{pos:"-400 5 390"},{pos:"-400 8 379"},{pos:"-400 8 386"},{pos:"-399 4 400"},{pos:"-399 9 389"},{pos:"-398 6 368"},{pos:"-398 9 382"},{pos:"-397 3 394"},{pos:"-397 7 375"},{pos:"-396 3 379"},{pos:"-396 5 396"},{pos:"-396 8 387"},{pos:"-395 6 371"},{pos:"-394 5 382"},{pos:"-394 7 402"},{pos:"-394 9 385"},{pos:"-393 3 392"},{pos:"-393 5 372"},{pos:"-393 5 394"},{pos:"-392 3 387"},{pos:"-392 5 377"},{pos:"-391 3 375"},{pos:"-391 3 383"},{pos:"-391 3 396"},{pos:"-391 7 391"},{pos:"-390 9 371"},{pos:"-389 3 390"},{pos:"-389 5 373"},{pos:"-389 7 399"},{pos:"-389 8 368"},{pos:"-388 3 381"},{pos:"-388 5 389"},{pos:"-387 5 378"},{pos:"-387 9 376"},{pos:"-387 9 380"},{pos:"-387 9 386"},{pos:"-387 9 392"},{pos:"-386 9 366"},{pos:"-385 3 383"},{pos:"-385 9 388"},{pos:"-385 9 396"},{pos:"-384 3 381"},{pos:"-384 9 377"},{pos:"-384 9 384"},{pos:"-383 5 384"},{pos:"-383 9 370"},{pos:"-383 9 381"},{pos:"-382 3 380"},{pos:"-382 5 374"},{pos:"-382 8 394"},{pos:"-381 3 369"},{pos:"-381 3 384"},{pos:"-381 5 390"},{pos:"-381 9 375"},{pos:"-380 8 392"},{pos:"-379 7 369"},{pos:"-378 3 375"},{pos:"-378 5 385"},{pos:"-378 7 362"},{pos:"-377 3 371"},{pos:"-377 6 364"},{pos:"-377 9 376"},{pos:"-376 3 366"},{pos:"-376 3 386"},{pos:"-376 6 370"},{pos:"-376 7 392"},{pos:"-375 3 383"},{pos:"-374 3 379"},{pos:"-374 4 373"},{pos:"-374 6 359"},{pos:"-373 7 387"},{pos:"-372 5 366"},{pos:"-372 8 375"},{pos:"-371 4 362"},{pos:"-371 6 392"},{pos:"-371 8 380"},{pos:"-371 8 383"},{pos:"-370 4 384"},{pos:"-370 5 360"},{pos:"-369 3 363"},{pos:"-369 3 382"},{pos:"-369 6 372"},{pos:"-369 7 388"},{pos:"-369 9 373"},{pos:"-369 9 381"},{pos:"-368 7 369"},{pos:"-368 8 376"},{pos:"-367 3 367"},{pos:"-366 4 385"},{pos:"-365 3 380"},{pos:"-365 5 359"},{pos:"-365 5 370"},{pos:"-363 3 364"},{pos:"-362 3 373"},{pos:"-362 8 373"},{pos:"-361 3 387"},{pos:"-361 7 380"},{pos:"-359 3 369"},{pos:"-358 3 376"},{pos:"-358 7 373"},{pos:"-355 3 380"},{pos:"-355 6 367"},{pos:"-354 6 371"}]}