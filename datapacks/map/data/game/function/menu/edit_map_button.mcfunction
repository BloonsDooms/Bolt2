# transition screen
title @a[tag=!in_map_editor] times 10 10 10
title @a[tag=!in_map_editor] title {"translate":"\u0001","font":"title"}
effect give @a[tag=!in_map_editor] minecraft:slowness 1 5 true
execute as @a[tag=!in_map_editor] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.9

tellraw @a "opening map editor..."

schedule function game:menu/edit_map 15t