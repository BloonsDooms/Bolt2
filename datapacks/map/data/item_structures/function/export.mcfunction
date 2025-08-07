data remove block 69420 0 69420 Items
item replace block 69420 0 69420 container.0 with netherite_ingot 1
item modify block 69420 0 69420 container.0 item_structures:export
data remove block 69420 0 69420 Items[0].components.minecraft:custom_data.bleps_map.load_point

loot give @s mine 69420 0 69420
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 2

execute if score .print_messages item_structures matches 1 run title @s times 10 80 10
execute if score .print_messages item_structures matches 1 run title @s title {"text":"Created map item","color":"gold"}
#execute if score .print_messages item_structures matches 1 run title @s subtitle [{"text":"Save item with ","color":"gray"},{keybind:"key.saveToolbarActivator"},"+<slot>"]
execute if score .print_messages item_structures matches 1 run tellraw @s ["HOW TO SAVE YOUR MAP ITEM:\n1: Use an anvil to name your map\n2: Press ",{keybind:"key.inventory"},", and go to the \"",{translate:"itemGroup.hotbar"},"\" tab.\n3: Choose a row to save to, then press the keys shown.\n4: That's it! Your map item (and everything else in your hotbar) should now appear when you go back to the ",{translate:"itemGroup.hotbar"}," tab."]

function item_structures:zprivate/menu/sound
