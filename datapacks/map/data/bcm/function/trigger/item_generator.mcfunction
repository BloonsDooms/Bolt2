# find selected generator
tag @s add this
execute as @e[type=block_display,tag=generator,tag=editing] at @s if function bcm:util/is_owned_by_this run tag @s add owned

# parse input right to left
# input format: <time>789<warmup>
# warmup: [0,180] - unknown length 1 to 3 digits, followed by 789
scoreboard players set .l set_item_generator 0
# 1 digit?
execute if score .l set_item_generator matches 0 store success score .l set_item_generator run function bcm:trigger/check_length {10_exp_digits:10,objective:"set_item_generator",max:1000,sentinel:789}
# 2 digits?
execute if score .l set_item_generator matches 0 store success score .l set_item_generator run function bcm:trigger/check_length {10_exp_digits:100,objective:"set_item_generator",max:1000,sentinel:789}
# 3 digits?
execute if score .l set_item_generator matches 0 store success score .l set_item_generator run function bcm:trigger/check_length {10_exp_digits:1000,objective:"set_item_generator",max:1000,sentinel:789}
# get value
execute if score .l set_item_generator matches 0 run function bcm:fail/tellraw {input:'"Can\'t parse input"'}
scoreboard players operation @n[type=block_display,tag=owned] bcm_generator_warmup = .value calc
# time: [1,180]
execute store result score @n[type=block_display,tag=owned] bcm_generator_time run scoreboard players operation @s set_item_generator /= #1000 calc

# update sign text
execute as @n[type=block_display,tag=owned] at @s positioned ^ ^ ^1 run function bcm:place/generator_text

# cleanup player
tag @s remove this
scoreboard players reset @s set_item_generator

# cleanup generator
execute as @e[type=block_display,tag=owned] on passengers run kill @s
tag @e[type=block_display,tag=owned] remove editing
tag @e[type=block_display] remove owned