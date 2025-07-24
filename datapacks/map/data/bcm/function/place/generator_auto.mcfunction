tag @s remove init

# position
$function bcm:map/edit/official/tp_convert {pos:"$(pos)"}

# rotation
$scoreboard players set .r calc $(rotation)
execute if score .r calc matches -180 positioned ~ ~ ~-1 run function bcm:place/generator_sign {facing:"north",rotation:"[-180f,0f]"}
execute if score .r calc matches -90 positioned ~1 ~ ~ run function bcm:place/generator_sign {facing:"east",rotation:"[-90f,0f]"}
execute if score .r calc matches 0 positioned ~ ~ ~1 run function bcm:place/generator_sign {facing:"south",rotation:"[0f,0f]"}
execute if score .r calc matches 90 positioned ~-1 ~ ~ run function bcm:place/generator_sign {facing:"west",rotation:"[90f,0f]"}

# visibility state
execute store result entity @s view_range float 1 run scoreboard players get display.gens set_render_box

# times
$scoreboard players set @s bcm_generator_time $(generator_duration)
$scoreboard players set @s bcm_generator_warmup $(generator_warmup)

# list times unless default
execute if score @s bcm_generator_time matches 45 if score @s bcm_generator_warmup matches 5 run return 1
tag @s add this
execute at @s run data modify block ^ ^ ^1 front_text.messages[2] set value ["Item every ",{score:{name:"@n[type=block_display,tag=this]",objective:"bcm_generator_time"}},"s"]
execute at @s run data modify block ^ ^ ^1 front_text.messages[3] set value ["Warm-up: ",{score:{name:"@n[type=block_display,tag=this]",objective:"bcm_generator_warmup"}},"s"]
tag @s remove this