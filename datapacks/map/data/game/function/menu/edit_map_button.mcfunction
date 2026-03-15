# transition screen
title @a[tag=!in_map_editor] times 10 10 10
title @a[tag=!in_map_editor] title {"translate":"\u0001","font":"title"}
effect give @a[tag=!in_map_editor] minecraft:slowness 1 5 true
execute as @a[tag=!in_map_editor] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.9

tellraw @a "opening map editor..."

schedule function game:menu/edit_map 15t

# WHAT I'M WORKING ON
# edit text for button
#summon minecraft:text_display 265.1875 -52.875 -238.0625 {alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {bold: 0b, color: "#EEEEEE", font: "minecraft:fancy", text: " EDIT  "}, text_opacity: 255, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.999996f, 7.5f, 7.4999986f], translation: [0.0f, 0.0f, 0.0f]}}