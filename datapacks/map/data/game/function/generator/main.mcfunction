scoreboard players operation @s[tag=!old] t2 = @s generator_warmup
scoreboard players set @s[tag=!old] t 0
scoreboard players set @s[tag=!old] t3 0
tag @s add old

tag @s add me

scoreboard players add @s t3 1
scoreboard players remove @s[scores={t3=20..}] t2 1
scoreboard players set @s[scores={t3=20..}] t3 0

tag @s remove next
tag @s[scores={t2=..0}] add next

execute as @s[tag=next,scores={t=1}] at @s run summon item ~ ~1 ~ {NoGravity:1b,Tags:["no_kill"],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":{"color":"gray","italic":false,"text":"Mini TNT"},"minecraft:lore":[{"text":"Explodes, killing players","color":"white","italic":false},{"text":"Kills traps and respawns","color":"white","italic":false},{"text":"Explodes slower if thrown close","color":"white","italic":false}],"minecraft:tooltip_display":{hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}}},NoGravity:1b,Tags:["no_kill"]}
execute as @s[tag=next,scores={t=2}] at @s run summon item ~ ~1 ~ {NoGravity:1b,Tags:["no_kill"],Item:{id:"minecraft:bat_spawn_egg",count:3,components:{"minecraft:custom_model_data":{strings:["1"]},"minecraft:can_place_on":[{blocks:"#game:bolt_place"}],"minecraft:custom_name":{"text":"Walls","color":"gray","italic":false},"minecraft:lore":[{"text":"Four blocks of breakable gravel","color":"white","italic":false},{"text":"Pushes players and enitites up.","color":"white","italic":false}],"minecraft:entity_data":{id:"minecraft:silverfish",Silent:1b,NoAI:1b},"minecraft:tooltip_display":{hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}}}}
execute as @s[tag=next,scores={t=3}] at @s run summon item ~ ~1 ~ {NoGravity:1b,Tags:["no_kill"],Item:{id:"minecraft:creeper_spawn_egg",count:2,components:{"minecraft:custom_model_data":{strings:["0"]},"minecraft:can_place_on":[{blocks:"#game:bolt_place"}],"minecraft:custom_name":{"text":"Trap","italic":false,"color":"gray"},"minecraft:lore":[{"text":"Explodes when enemies get near","color":"white","italic":false},{"text":"Outer ring - explosion radius","color":"white","italic":false},{"text":"Inner ring - trigger radius","color":"white","italic":false},{"text":"Can be shot","color":"white","italic":false},{"text":"Max active: 12","color":"white","italic":false}],"minecraft:entity_data":{id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b},"minecraft:tooltip_display":{hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}}}}

scoreboard players add @s[tag=next] t 1
#execute if score .map .data matches 3 as @s[tag=next,scores={t=2}] at @s run scoreboard players add @s[tag=next] t 1
execute if data storage maps:active settings.disabledItems[0] as @s[tag=next,scores={t=2}] at @s run scoreboard players add @s[tag=next] t 1
scoreboard players set @s[tag=next,scores={t=4..}] t 1

#scoreboard players set @s[tag=next,scores={t=0}] t2 45
#scoreboard players set @s[tag=next,scores={t=1}] t2 45
#scoreboard players set @s[tag=next,scores={t=2}] t2 45
#scoreboard players set @s[tag=next,scores={t=3}] t2 45

#scoreboard players set @s[tag=next,scores={t=0},tag=long] t2 70
#scoreboard players set @s[tag=next,scores={t=1},tag=long] t2 70
#scoreboard players set @s[tag=next,scores={t=2},tag=long] t2 70
#scoreboard players set @s[tag=next,scores={t=3},tag=long] t2 70

scoreboard players operation @s[tag=next,scores={t=0}] t2 = @s generator_duration
scoreboard players operation @s[tag=next,scores={t=1}] t2 = @s generator_duration
scoreboard players operation @s[tag=next,scores={t=2}] t2 = @s generator_duration
scoreboard players operation @s[tag=next,scores={t=3}] t2 = @s generator_duration



data merge entity @s[scores={t3=0..3}] {CustomName:{"text":"⬜ ⬜ ⬜"}}
data merge entity @s[scores={t3=4..7}] {CustomName:{"text":"⬛ ⬜ ⬜"}}
data merge entity @s[scores={t3=8..11}] {CustomName:{"text":"⬛ ⬛ ⬜"}}
data merge entity @s[scores={t3=12..15}] {CustomName:{"text":"⬜ ⬛ ⬛"}}
data merge entity @s[scores={t3=16..19}] {CustomName:{"text":"⬜ ⬜ ⬛"}}

data merge entity @s[scores={t3=0..1}] {CustomName:{"text":"⬜ ⬜ ⬜ ⬜ ⬜ ⬜"}}
data merge entity @s[scores={t3=2..3}] {CustomName:{"text":"⬛ ⬜ ⬜ ⬜ ⬜ ⬜"}}
data merge entity @s[scores={t3=4..5}] {CustomName:{"text":"⬛ ⬛ ⬜ ⬜ ⬜ ⬜"}}
data merge entity @s[scores={t3=6..7}] {CustomName:{"text":"⬛ ⬛ ⬛ ⬜ ⬜ ⬜"}}
data merge entity @s[scores={t3=8..9}] {CustomName:{"text":"⬛ ⬛ ⬛ ⬛ ⬜ ⬜"}}
data merge entity @s[scores={t3=10..11}] {CustomName:{"text":"⬜ ⬛ ⬛ ⬛ ⬛ ⬜"}}
data merge entity @s[scores={t3=12..13}] {CustomName:{"text":"⬜ ⬜ ⬛ ⬛ ⬛ ⬛"}}
data merge entity @s[scores={t3=14..15}] {CustomName:{"text":"⬜ ⬜ ⬜ ⬛ ⬛ ⬛"}}
data merge entity @s[scores={t3=16..17}] {CustomName:{"text":"⬜ ⬜ ⬜ ⬜ ⬛ ⬛"}}
data merge entity @s[scores={t3=18..19}] {CustomName:{"text":"⬜ ⬜ ⬜ ⬜ ⬜ ⬛"}}

execute as @s[scores={t=1}] run data merge block ^ ^ ^1 {front_text:{Color:"-1",messages:[[{"text":"Making: ","bold":true,"color":"black"},{"text":"Mini TNT","color":"#540b0b","bold":false}],[{"text":"Time: ","color":"black"},{"score":{"name":"@e[tag=gen,tag=me,limit=1]","objective":"t2"}}],{"selector":"@e[tag=gen,tag=me,limit=1]","color":"dark_gray"},[{"text":"Next: ","bold":true,"color":"black"},{"text":"Walls","color":"#3A3C50","bold":false}]]}}
#execute if score .map .data matches 3 as @s[scores={t=1}] run data merge block ^ ^ ^1 {front_text:{Color:"-1",messages:[[{"text":"Making: ","bold":true,"color":"black"},{"text":"Mini TNT","color":"#540b0b","bold":false}],[{"text":"Time: ","color":"black"},{"score":{"name":"@e[tag=gen,tag=me,limit=1]","objective":"t2"}}],{"selector":"@e[tag=gen,tag=me,limit=1]","color":"dark_gray"},[{"text":"Next: ","bold":true,"color":"black"},{"text":"Traps","color":"#543A06","bold":false}]]}}
execute if data storage maps:active settings.disabledItems[0] as @s[scores={t=1}] run data merge block ^ ^ ^1 {front_text:{Color:"-1",messages:[[{"text":"Making: ","bold":true,"color":"black"},{"text":"Mini TNT","color":"#540b0b","bold":false}],[{"text":"Time: ","color":"black"},{"score":{"name":"@e[tag=gen,tag=me,limit=1]","objective":"t2"}}],{"selector":"@e[tag=gen,tag=me,limit=1]","color":"dark_gray"},[{"text":"Next: ","bold":true,"color":"black"},{"text":"Traps","color":"#543A06","bold":false}]]}}
execute as @s[scores={t=2}] run data merge block ^ ^ ^1 {front_text:{Color:"-1",messages:[[{"text":"Making: ","bold":true,"color":"black"},{"text":"Walls","color":"#3A3C50","bold":false}],[{"text":"Time: ","color":"black"},{"score":{"name":"@e[tag=gen,tag=me,limit=1]","objective":"t2"}}],{"selector":"@e[tag=gen,tag=me,limit=1]","color":"dark_gray"},[{"text":"Next: ","bold":true,"color":"black"},{"text":"Traps","color":"#543A06","bold":false}]]}}
execute as @s[scores={t=3}] run data merge block ^ ^ ^1 {front_text:{Color:"-1",messages:[[{"text":"Making: ","bold":true,"color":"black"},{"text":"Traps","color":"#543A06","bold":false}],[{"text":"Time: ","color":"black"},{"score":{"name":"@e[tag=gen,tag=me,limit=1]","objective":"t2"}}],{"selector":"@e[tag=gen,tag=me,limit=1]","color":"dark_gray"},[{"text":"Next: ","bold":true,"color":"black"},{"text":"Mini TNT","color":"#540b0b","bold":false}]]}}

execute as @s[scores={t=..0}] run data merge block ^ ^ ^1 {front_text:{Color:"-1",messages:[[{"text":"Warming Up","bold":true,"color":"black"},{"text":"","color":"black","bold":false}],[{"text":"Time: ","color":"black"},{"score":{"name":"@e[tag=gen,tag=me,limit=1]","objective":"t2"}}],{"selector":"@e[tag=gen,tag=me,limit=1]","color":"dark_gray"},[{"text":"Next: ","bold":true,"color":"black"},{"text":"Mini TNT","color":"#540b0b","bold":false}]]}}


tag @s remove me