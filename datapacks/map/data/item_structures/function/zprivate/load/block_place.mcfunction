# place block
execute store result storage item_structures macro.index short 1 run scoreboard players get block_id commands
function item_structures:zprivate/load/block_place_lookup with storage item_structures macro
# if trusted, use nbt as is
execute if score .custom_maps_trust_block_nbt .data matches 1 if data block ~ ~ ~ {} run data modify block ~ ~ ~ {} merge from storage item_structures load.nbts[0]
execute if score .custom_maps_trust_block_nbt .data matches 1 if data block ~ ~ ~ {} run data remove storage item_structures load.nbts[0]
# else, use nbt only for certain blocks, and sanitize signs
execute unless score .custom_maps_trust_block_nbt .data matches 1 if block ~ ~ ~ #minecraft:all_signs run function item_structures:zprivate/load/remove_click_events
execute unless score .custom_maps_trust_block_nbt .data matches 1 if block ~ ~ ~ #bcm:nbt_allowed run data modify block ~ ~ ~ {} merge from storage item_structures load.nbts[0]
execute unless score .custom_maps_trust_block_nbt .data matches 1 if block ~ ~ ~ #bcm:nbt_allowed run data remove storage item_structures load.nbts[0]
# always lock containers even if trusted
execute if data block ~ ~ ~ {} run data merge block ~ ~ ~ {lock:{components:{"minecraft:custom_name":"open containers"}}}
# remove entry
data remove storage item_structures load.blocks[0]