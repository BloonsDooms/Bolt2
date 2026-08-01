data modify storage macro gate set from entity @s data.gate
scoreboard players operation .value .calc = .current_height .calc
execute store result storage macro gate.current_height int 1 run scoreboard players operation .value .calc < .height .calc
execute positioned ~ ~-1 ~ run function game:gate/editor/up_clone with storage macro gate