# fail if game running
execute if score .running .data matches 1 run return run title @a[tag=lobby] title {"text":"Game in progress","color":"gray","font":"fancy"}

# start edit countdown
scoreboard players set .edit_cd .data 71

# WHAT I'M WORKING ON
# edit text for button
#summon minecraft:text_display 265.1875 -52.875 -238.0625 {alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {bold: 0b, color: "#EEEEEE", font: "minecraft:fancy", text: " EDIT  "}, text_opacity: 255, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.999996f, 7.5f, 7.4999986f], translation: [0.0f, 0.0f, 0.0f]}}