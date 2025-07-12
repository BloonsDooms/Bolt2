#
scoreboard players remove .map_display .data 1

# I don't want to talk about this.
scoreboard players remove .map_count .data 1
execute if score .map_display .data < .0 .num run scoreboard players operation .map_display .data = .map_count .data
scoreboard players add .map_count .data 1


#
execute store result storage minecraft:macro mapID int 1 run scoreboard players get .map_display .data
function game:menu/map_display with storage minecraft:macro