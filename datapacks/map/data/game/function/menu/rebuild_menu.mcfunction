# load map data to shuba's system
$data merge storage minecraft:item_structures {save:$(MapIcon)}

# spawn in build 
tag @s add start_point
function item_structures:load
tag @s remove start_point

# +1 map id plus run next map
execute at @s run tp @s ~2 ~ ~
execute store result storage macro map_id int 1 run scoreboard players add .map_icon_counter .data 1
execute if score .map_icon_counter .data <= .map_count .data run schedule function game:menu/rebuild_menu_scheduler 2t

