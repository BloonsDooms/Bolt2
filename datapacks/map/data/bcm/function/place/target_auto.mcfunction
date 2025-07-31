$function bcm:map/edit/tp_convert {pos:"$(pos)"}

execute if entity @e[type=marker,tag=editor_target,distance=..0.1] run kill @s
execute if entity @e[type=marker,tag=editor_target,distance=..0.1] run scoreboard players add targets.fail calc 1

data merge entity @s {Tags:["map_editor","place","editor_target","target_or_crate"]}
execute at @s run setblock ~ ~ ~ target strict

data remove storage bcm tmp.targets[-1]
execute if data storage bcm tmp.targets[] summon marker run function bcm:place/target_auto with storage bcm tmp.targets[-1]