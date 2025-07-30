execute if score @s master_menu matches 1 run function bcm:dialog/render_box
execute if score @s master_menu matches 2 run function bcm:dialog/pos_and_rot
execute if score @s master_menu matches 3 run function bcm:dialog/targets_and_crates
execute if score @s master_menu matches 4 if score .is_busy item_structures matches 1 run function bcm:fail/tellraw {input:'"item structure system is busy loading or saving something else. please wait a few seconds, then try saving your map again. tell shuba if this error persists."'}
execute if score @s master_menu matches 4 unless score .is_busy item_structures matches 1 run function bcm:map/save
execute if score @s master_menu matches 5 run function bcm:editor/leave_to_lobby

scoreboard players reset @s master_menu