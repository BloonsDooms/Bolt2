# if same spot, don't change
execute if entity @e[type=block_display,tag=place,tag=editor_gate,tag=!init,distance=..0.1] run return run kill @s

# rotation
execute store result score .r .calc run data get entity @p[scores={place_object_egg=1..}] Rotation[0] 1
scoreboard players add .r .calc 45
execute store result entity @s Rotation[0] float 90 run scoreboard players operation .r .calc /= .90 .num

# open dialog
execute at @s as @p[scores={place_object_egg=1..}] run function bcm:dialog/gate

tag @s remove init