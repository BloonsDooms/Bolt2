# find selected gate
tag @s add this
execute as @e[type=block_display,tag=gate,tag=editing] at @s if function bcm:util/is_owned_by_this run tag @s add owned

# parse input from right to left
scoreboard players operation .value .calc = @s set_gate
# one way: boolean
execute store result storage bcm tmp.one_way byte 1 run scoreboard players operation .value .calc %= .10 .num
execute store result score .value .calc run scoreboard players operation @s set_gate /= .10 .num
# height: [1,9]
execute store result storage bcm tmp.height int 1 run scoreboard players operation .value .calc %= .10 .num
execute store result score .value .calc run scoreboard players operation @s set_gate /= .10 .num
# width: [1,9]
execute store result storage bcm tmp.width int 1 run scoreboard players operation .value .calc %= .10 .num
# time: [1,100]
execute store result storage bcm tmp.time int 1 run scoreboard players operation @s set_gate /= .10 .num

# update gate preview
execute as @n[type=block_display,tag=owned] store success score .success .calc run function bcm:place/gate_preview
execute if score .success .calc matches 0 run kill @n[type=block_display,tag=owned]
execute if score .success .calc matches 0 run function bcm:fail/actionbar {input:'"Not enough space for gate"'}

# cleanup
data remove storage bcm tmp
tag @s remove this
scoreboard players reset @s set_gate
execute as @e[type=block_display,tag=owned] on passengers run kill @s
tag @e[type=block_display,tag=owned] remove editing
tag @e[type=block_display] remove owned