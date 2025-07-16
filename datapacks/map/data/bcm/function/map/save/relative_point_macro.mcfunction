# get absolute position
summon marker ~ ~ ~ {Tags:[tmp]}
$tp @n[type=marker,tag=tmp] $(abs)
execute store result score .x calc run data get entity @n[type=marker,tag=tmp] Pos[0] 1000
execute store result score .y calc run data get entity @n[type=marker,tag=tmp] Pos[1] 1000
execute store result score .z calc run data get entity @n[type=marker,tag=tmp] Pos[2] 1000
kill @n[type=marker,tag=tmp]

# calculate relative position
execute store result storage bcm macro.x double 0.001 run scoreboard players operation .x calc -= .x1 calc
execute store result storage bcm macro.y double 0.001 run scoreboard players operation .y calc -= .y1 calc
execute store result storage bcm macro.z double 0.001 run scoreboard players operation .z calc -= .z1 calc

# stringify
function bcm:xyz_string with storage bcm macro
$tellraw @a ["abs = $(abs)\nbcm map.$(to) = ",{nbt:"tmp.pos",storage:"bcm"}]
$data modify storage bcm map.$(to) set from storage bcm tmp.pos