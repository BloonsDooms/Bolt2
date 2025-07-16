# get origin
kill @e[type=marker,tag=tmp]
$summon marker $(start) {Tags:[tmp]}
execute store result score .x1 calc run data get entity @n[type=marker,tag=tmp] Pos[0] 1000
execute store result score .y1 calc run data get entity @n[type=marker,tag=tmp] Pos[1] 1000
execute store result score .z1 calc run data get entity @n[type=marker,tag=tmp] Pos[2] 1000
$execute positioned $(start) run kill @n[type=marker,tag=tmp]
$tellraw @a "\nstart = $(start)"

data remove storage bcm macro

function bcm:map/save/relative_point {to:"red_spawn.start"}
function bcm:map/save/relative_point {to:"blue_spawn.start"}
function bcm:map/save/relative_point {to:"red_spawnpoint"}
function bcm:map/save/relative_point {to:"blue_spawnpoint"}
function bcm:map/save/relative_point {to:"intro_camera"}

data remove storage bcm tmp

scoreboard players operation .x1 calc /= #1000 calc
scoreboard players operation .y1 calc /= #1000 calc
scoreboard players operation .z1 calc /= #1000 calc