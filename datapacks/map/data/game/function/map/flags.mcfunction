$execute if score .mode .data = .1 .num run summon armor_stand $(blueFlag) {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:blue_banner",count:1}},Tags:["blueflag","flag"]}
$execute if score .mode .data = .1 .num run summon armor_stand $(redFlag) {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:red_banner",count:1}},Tags:["redflag","flag"]}

execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @e[tag=flag] add kill