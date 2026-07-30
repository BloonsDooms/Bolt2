# find selected gate
tag @s add this
execute as @e[type=block_display,tag=gate,tag=editing] at @s if function bcm:util/is_owned_by_this run tag @s add owned

# cleanup
data remove storage bcm tmp
tag @s remove this
scoreboard players reset @s set_gate
execute as @e[type=block_display,tag=owned] on passengers run kill @s
tag @e[type=block_display,tag=owned] remove editing
tag @e[type=block_display] remove owned