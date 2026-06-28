#tp @s 243.5 -44.00 -235.5 -90 13

scoreboard players set @s menu_afk 0

scoreboard players set .mriders .data 0
execute as @e[tag=menu_ride,tag=rider] run scoreboard players add .mriders .data 1

execute if score .mriders .data matches 0..2 at @s run summon minecraft:block_display ~ ~0.5 ~ {teleport_duration:10,Tags:["menu_ride","new"]}

execute if score .mriders .data matches 0..2 run ride @s mount @e[tag=menu_ride,tag=!rider,limit=1]

execute if score .mriders .data matches 0 run tp @e[type=minecraft:block_display,tag=new,tag=menu_ride] 243.50 -43.50 -235.50
execute if score .mriders .data matches 1 run tp @e[type=minecraft:block_display,tag=new,tag=menu_ride] 243.50 -43.50 -237.00
execute if score .mriders .data matches 2 run tp @e[type=minecraft:block_display,tag=new,tag=menu_ride] 243.50 -43.50 -234.00

execute if score .mriders .data matches 3.. run title @s times 5 10 10
execute if score .mriders .data matches 3.. run title @s title [{"text":""}]
execute if score .mriders .data matches 3.. run title @s subtitle [{"text":"Too many players in menu"}]
execute if score .mriders .data matches 3.. run tp @s 243.5 -46.00 -235.5 -90 13

execute as @e[tag=menu_ride] run function game:menu/menu_ride

execute at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.1
execute at @s run playsound minecraft:entity.allay.item_taken master @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 1.7

tag @a remove join_menu

attribute @s minecraft:scale base set 1
