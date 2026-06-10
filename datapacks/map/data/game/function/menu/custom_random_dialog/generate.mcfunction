# get maps
data remove storage maps:list custom_random_dialog
data modify storage maps:list custom_random_dialog.maps set from storage maps:list maps
# execute if score .custom_maps_enabled .data matches 0 run data modify storage maps:list custom_random_dialog.maps set from storage maps:list maps
# execute if score .custom_maps_enabled .data matches 0 run data remove storage maps:list custom_random_dialog.maps[{isItemMap:true}]
# execute if score .custom_maps_enabled .data matches 1 run data modify storage maps:list custom_random_dialog.maps append from storage maps:list maps[{isItemMap:true}]
data remove storage maps:list custom_random_dialog.maps[{mapName:"RANDOM"}]

# process maps
scoreboard players set .dialog .custom_random 0
execute if data storage maps:list custom_random_dialog.maps[0] run function game:menu/custom_random_dialog/loop with storage maps:list custom_random_dialog.maps[0]

# show dialog
scoreboard players enable @s custom_random_dialog
function game:menu/custom_random_dialog/show with storage maps:list custom_random_dialog