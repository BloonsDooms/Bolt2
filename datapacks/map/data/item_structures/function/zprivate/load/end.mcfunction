scoreboard players set .is_busy item_structures 0

execute if score .print_messages item_structures matches 1 run title @a times 10 80 10
execute if score .print_messages item_structures matches 1 run title @a title {"text":"Structure Loaded","color":"green"}
execute if score .print_messages item_structures matches 1 run title @a subtitle {"text":"Hope you like it :D","color":"gray"}

bossbar set progress visible false

data remove storage item_structures forceload
data modify storage item_structures forceload.x set from storage item_structures load.size[0]
data modify storage item_structures forceload.z set from storage item_structures load.size[2]
execute at @s run function item_structures:zprivate/forceunload with storage item_structures forceload
kill @e[tag=loader]