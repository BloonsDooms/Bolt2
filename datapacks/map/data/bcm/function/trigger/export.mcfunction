scoreboard players reset @s export_map

execute unless data storage bcm export run return run function bcm:fail/tellraw {input:'"ERROR exporting map: missing map data"'}
execute unless data storage item_structures export run return run function bcm:fail/tellraw {input:'"ERROR exporting map: missing map structure"'}

scoreboard players set .print_messages item_structures 1
function item_structures:export