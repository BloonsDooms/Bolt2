# teleport the players to the loading box
#execute if score .chunkload_time .timer matches 0 run function game:map/load_box with storage maps:active settings
function game:map/load_box with storage maps:active settings


# if the time has surpassed 300 gameticks (15 seconds), change the gamestate to 16 to dispaly an error and do a fallback.
execute if score .chunkload_time .timer matches 300.. run scoreboard players set .gamestate .data 16

# check to see if the neighbooring chunks have loaded. This should only apply to players who are playing, not currently the case.
# We are checking the location 4 chunks over, in each direction.
tag @a remove south_loaded
tag @a remove north_loaded
tag @a remove east_loaded
tag @a remove west_loaded
execute as @a at @s if loaded ~ ~ ~64 run tag @s add south_loaded
execute as @a at @s if loaded ~ ~ ~-64 run tag @s add north_loaded
execute as @a at @s if loaded ~64 ~ ~ run tag @s add east_loaded
execute as @a at @s if loaded ~-64 ~ ~ run tag @s add west_loaded


# yeah.... probably shouldn't be here
title @a times 0 20 0
title @a title {"translate":"\u0001","font":"title"}



# debug information. 100% a jank way to do this, but I don't really care right now.
execute if score .chunkload_time .timer matches 0 run tellraw @a[tag=verbose] [{text:"Waiting for chunks to load:\n Gamestate:"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 15"}]
execute if score .chunkload_time .timer matches 30 run tellraw @a[tag=verbose] [{text:"Waiting for chunks to load:\n Gamestate:"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 15"}]
execute if score .chunkload_time .timer matches 60 run tellraw @a[tag=verbose] [{text:"Waiting for chunks to load:\n Gamestate:"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 15"}]
execute if score .chunkload_time .timer matches 90 run tellraw @a[tag=verbose] [{text:"Waiting for chunks to load:\n Gamestate:"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 15"}]
execute if score .chunkload_time .timer matches 120 run tellraw @a[tag=verbose] [{text:"Waiting for chunks to load:\n Gamestate:"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 15"}]
execute if score .chunkload_time .timer matches 150 run tellraw @a[tag=verbose] [{text:"Waiting for chunks to load:\n Gamestate:"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 15"}]
execute if score .chunkload_time .timer matches 180 run tellraw @a[tag=verbose] [{text:"Waiting for chunks to load:\n Gamestate:"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 15"}]
execute if score .chunkload_time .timer matches 210 run tellraw @a[tag=verbose] [{text:"Waiting for chunks to load:\n Gamestate:"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 15"}]
execute if score .chunkload_time .timer matches 240 run tellraw @a[tag=verbose] [{text:"Waiting for chunks to load:\n Gamestate:"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 15"}]
execute if score .chunkload_time .timer matches 270 run tellraw @a[tag=verbose] [{text:"Waiting for chunks to load:\n Gamestate:"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 15"}]



# if all 4 chunks are loaded, progress gamestate to 20. Gamestate 20 currently runs calculate_elo, but in the future will clear map first.
# REWORK adding a temporary fix to force it to wait an additional 10 gameticks to load the chunks... This is a weird bug in multiplayer.
execute as @a if entity @s[tag=south_loaded,tag=north_loaded,tag=east_loaded,tag=west_loaded] if score .chunkload_time .timer matches 10.. run scoreboard players set .gamestate .data 20

# if the chunks have failed to load after 15 seconds. Gamestate 16 throws an error and falls back to spawn.
execute as @a unless entity @s[tag=south_loaded,tag=north_loaded,tag=east_loaded,tag=west_loaded] if score .chunkload_time .timer matches 301.. run scoreboard players set .gamestate .data 16

# progress timer
scoreboard players add .chunkload_time .timer 1