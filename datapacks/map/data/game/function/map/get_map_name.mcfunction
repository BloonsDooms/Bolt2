execute store success score .map_name_check .data run data modify storage macro mapName set from storage maps:active mapName
data remove storage macro mapName
execute if score .map_name_check .data matches 1 run return fail
execute if score .map_name_check .data matches 0 run return 1