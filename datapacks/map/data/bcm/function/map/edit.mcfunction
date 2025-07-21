# which map type is it?
$execute store result score .map_exists calc run function bcm:map/check_existing {mapName:"$(mapName)"}
scoreboard players set .print_messages item_structures 1

# if no map, throw error
$execute if score .map_exists calc matches 0 run return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t find map named \\"$(mapName)\\""'}

# if item map, load as is
$execute if score .map_exists calc matches 1 run function bcm:map/load {mapName:"$(mapName)",new:false}

# if non-item map, convert data
$execute if score .map_exists calc matches 2 run function bcm:map/convert_to_editor {mapName:"$(mapName)"}