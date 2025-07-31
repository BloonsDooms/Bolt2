execute if score @s targets_and_crates matches 1 run function bcm:map/load_targets_and_crates
execute if score @s targets_and_crates matches 2 as @e[type=interaction,tag=editor_crate] at @s run setblock ~ ~ ~ air destroy
execute if score @s targets_and_crates matches 2 as @e[type=marker,tag=editor_target] at @s run setblock ~ ~ ~ air destroy
execute if score @s targets_and_crates matches 3 run tellraw @a "save placed targets & crates"

scoreboard players reset @s targets_and_crates