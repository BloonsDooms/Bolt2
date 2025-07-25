# convert values to ints to easily check their signs
$data modify storage bcm tmp.dx set value $(dx)
$data modify storage bcm tmp.dy set value $(dy)
$data modify storage bcm tmp.dz set value $(dz)
execute store result score .dx calc run data get storage bcm tmp.dx 1
execute store result score .dy calc run data get storage bcm tmp.dy 1
execute store result score .dz calc run data get storage bcm tmp.dz 1
data remove storage bcm tmp

# summon bounding box markers
$summon marker ~ ~ ~ {Tags:["map_editor","pos1","render_box","init","$(tag)"]}
$summon marker ~ ~ ~ {Tags:["map_editor","pos2","render_box","init","$(tag)"]}

# move to bounding box origin point
$execute as @n[type=marker,tag=pos1] at @s run function bcm:map/edit/tp_convert {pos:"$(origin)"}
$execute as @n[type=marker,tag=pos2] at @s run function bcm:map/edit/tp_convert {pos:"$(origin)"}

# dx
execute if score .dx calc matches 0.. run tag @n[type=marker,tag=pos2] add tp_dx
execute if score .dx calc matches ..-1 run tag @n[type=marker,tag=pos1] add tp_dx
$execute as @n[type=marker,tag=tp_dx] at @s run tp @s ~$(dx) ~ ~

# dy
execute if score .dy calc matches 0.. run tag @n[type=marker,tag=pos2] add tp_dy
execute if score .dy calc matches ..-1 run tag @n[type=marker,tag=pos1] add tp_dy
$execute as @n[type=marker,tag=tp_dy] at @s run tp @s ~ ~$(dy) ~

# dz
execute if score .dz calc matches 0.. run tag @n[type=marker,tag=pos2] add tp_dz
execute if score .dz calc matches ..-1 run tag @n[type=marker,tag=pos1] add tp_dz
$execute as @n[type=marker,tag=tp_dz] at @s run tp @s ~ ~ ~$(dz)

# extend area by 1 block because selectors are silly 
execute as @n[type=marker,tag=pos2] at @s run tp @s ~1 ~1 ~1

# cleanup
tag @e[type=marker] remove tp_dx
tag @e[type=marker] remove tp_dy
tag @e[type=marker] remove tp_dz