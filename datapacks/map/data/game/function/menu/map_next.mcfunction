#
scoreboard players add .map_display .data 1
execute if score .map_display .data >= .map_count .data run scoreboard players set .map_display .data 0

#
execute store result storage minecraft:macro mapID int 1 run scoreboard players get .map_display .data
function game:menu/map_display with storage minecraft:macro