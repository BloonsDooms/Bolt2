#$data modify storage item_structures macro.block set from storage item_structures blocks[$(index)]
$data modify storage item_structures macro.block set from storage item_structures load.index[$(index)]
function item_structures:zprivate/load/block_place_setblock with storage item_structures macro

# utility placement restrictors
execute unless score .is_map_icon item_structures matches 1 if block ~ ~ ~ #minecraft:climbable run setblock ~ -60 ~ diamond_block strict