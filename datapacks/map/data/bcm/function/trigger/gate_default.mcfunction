# find selected gate
tag @s add this
execute as @e[type=block_display,tag=gate,tag=editing] at @s if function bcm:util/is_owned_by_this run tag @s add owned

# reset settings to default values
data modify storage bcm tmp set value {\
    height: 4,\
    width: 3,\
    time: 6\
}

# update gate
execute as @n[type=block_display,tag=owned] at @s run function bcm:place/gate_update

# cleanup
data remove storage bcm tmp
tag @s remove this
scoreboard players reset @s set_gate
execute as @e[type=block_display,tag=owned] on passengers run kill @s
tag @e[type=block_display,tag=owned] remove editing
tag @e[type=block_display] remove owned