# wait until unbusy then load map structure
execute if score .is_busy item_structures matches 1 run return run schedule function bcm:map/load_schedule 2t
scoreboard players set .place_restrictors item_structures 1
scoreboard players set .print_messages item_structures 1
function bcm:map/load_schedule_macro with storage bcm schedule
data remove storage bcm schedule