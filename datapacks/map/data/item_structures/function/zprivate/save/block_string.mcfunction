## Bookshelf - edited version of #bs.block:get_block to exclude NBT, which is handled separately
# read block
loot replace block 69420 0 69420 container.0 loot bs.block:internal/get_block
data modify storage bs:out block set from block 69420 0 69420 Items[0].components."minecraft:custom_data"

# remove 'minecraft:' prefix
data modify storage bs:out block.type set string storage bs:out block.type 10

# return the block string: {type}
execute unless data storage bs:out block._ run return run data modify storage bs:out block.block set from storage bs:out block.type

# generate the state string
data modify storage bs:ctx _ set value {0:"",1:"",2:"",3:"",4:"",5:"",6:"",7:""}
data modify storage bs:ctx _ merge from storage bs:out block._
function bs.block:get/compile/concat/state with storage bs:ctx _

# return the block string: {type}{state}
return run function bs.block:get/compile/concat/block with storage bs:out block