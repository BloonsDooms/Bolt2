execute if data entity @s SelectedItem.components."minecraft:custom_data".structure run data modify storage item_structures save set from entity @s SelectedItem.components."minecraft:custom_data".structure

title @s times 10 80 10
title @s title {"text":"Item Imported","color":"dark_green"}
title @s subtitle {"text":"Imported from hand Item","color":"gray"}
execute unless data entity @s SelectedItem.components."minecraft:custom_data".structure run title @s title {"text":"FAILED Imported","color":"dark_green"}
execute unless data entity @s SelectedItem.components."minecraft:custom_data".structure run title @s subtitle {"text":"This isnt an item structure!","color":"gray"}

function item_structures:zprivate/menu/sound