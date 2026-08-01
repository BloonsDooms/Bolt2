data modify storage macro gate set from entity @s data.gate
scoreboard players operation .value .calc = .current_height .calc
execute store result storage macro gate.current_height int 1 run scoreboard players operation .value .calc < .height .calc
execute store result storage macro gate.mem_height int 1 run scoreboard players add .value .calc 310
execute positioned ~ ~-1 ~ run function game:gate/editor/down_macro with storage macro gate