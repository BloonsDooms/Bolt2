scoreboard players remove .edit_cd .data 1

# countdown
execute if score .edit_cd .data matches 70 run title @a times 4 8 5
execute if score .edit_cd .data matches 70 run title @a title {text:"Editing in 3",font:fancy}
execute if score .edit_cd .data matches 70 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute if score .edit_cd .data matches 50 run title @a title {text:"Starting in 2",font:fancy}
execute if score .edit_cd .data matches 50 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute if score .edit_cd .data matches 30 run title @a title {text:"Starting in 1",font:fancy}
execute if score .edit_cd .data matches 30 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0

# transition screen
execute if score .edit_cd .data matches 15 run title @a[tag=!in_map_editor] times 10 10 10
execute if score .edit_cd .data matches 15 run title @a[tag=!in_map_editor] title {translate:"\u0001",font:title}
execute if score .edit_cd .data matches 15 run effect give @a[tag=!in_map_editor] minecraft:slowness 1 5 true
execute if score .edit_cd .data matches 15 as @a[tag=!in_map_editor] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.9
execute if score .edit_cd .data matches 15 run tellraw @a "opening map editor..."

# open map in editor
execute if score .edit_cd .data matches 0 run function game:menu/edit_map
