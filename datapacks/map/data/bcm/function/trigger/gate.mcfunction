# find selected gate
tag @s add this
execute as @e[type=block_display,tag=gate,tag=editing] at @s if function bcm:util/is_owned_by_this run tag @s add owned

# parse input from right to left
scoreboard players operation .value .calc = @s set_gate
# height: [1,9]
execute store result storage bcm tmp.height int 1 run scoreboard players operation .value .calc %= .10 .num
execute store result score .value .calc run scoreboard players operation @s set_gate /= .10 .num
# width: [1,9]
execute store result storage bcm tmp.width int 1 run scoreboard players operation .value .calc %= .10 .num
execute store result score .value .calc run scoreboard players operation @s set_gate /= .10 .num
# sound: 1=inherit, 2=piston, 3=inherit/piston
scoreboard players operation .value .calc %= .10 .num
execute if score .value .calc matches 1 run data remove storage bcm tmp.sound
execute if score .value .calc matches 2 run data modify storage bcm tmp.sound set value {\
    open: "block.piston.contract",\
    openPitch: 1f,\
    close: "block.piston.extend",\
    closePitch: 1f,\
}
execute if score .value .calc matches 3 run data modify storage bcm tmp.sound set value {\
    close: "block.piston.extend",\
    closePitch: 1f,\
}

# time: [1,100]
execute store result storage bcm tmp.time int 1 run scoreboard players operation @s set_gate /= .10 .num

# update gate
execute as @n[type=block_display,tag=owned] at @s run function bcm:place/gate_update

# cleanup
data remove storage bcm tmp
tag @s remove this
scoreboard players reset @s set_gate
execute as @e[type=block_display,tag=owned] on passengers run kill @s
tag @e[type=block_display,tag=owned] remove editing
tag @e[type=block_display] remove owned