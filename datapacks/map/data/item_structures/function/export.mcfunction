data remove block 69420 0 69420 Items
item replace block 69420 0 69420 container.0 with netherite_ingot 1
item modify block 69420 0 69420 container.0 item_structures:export

loot give @s mine 69420 0 69420

title @s times 10 80 10
title @s title {"text":"Item Exported","color":"gold"}
title @s subtitle [{"text":"Save item with ","color":"gray"},{keybind:"key.saveToolbarActivator"},"+<slot>"]

function item_structures:zprivate/menu/sound
