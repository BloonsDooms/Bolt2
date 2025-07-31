$function bcm:map/edit/tp_convert {pos:"$(pos)"}

$scoreboard players set @s bcm_crate_difficulty $(difficulty)
function bcm:place/crate_text

execute at @s if entity @e[type=interaction,tag=editor_crate,distance=..0.1] run scoreboard players add crates.replace calc 1
execute at @s run kill @e[type=interaction,tag=editor_crate,distance=..0.1]

data merge entity @s {Tags:["map_editor","place","editor_crate","target_or_crate"],response:true}
execute at @s run setblock ~ ~ ~ deepslate_copper_ore strict

data remove storage bcm tmp.crates[-1]
execute if data storage bcm tmp.crates[] summon interaction run function bcm:place/crate_auto with storage bcm tmp.crates[-1]