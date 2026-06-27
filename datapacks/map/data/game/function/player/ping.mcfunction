# raycast
particle enchanted_hit ~ ~ ~ 0 0 0 0 1 normal @s
execute positioned ^ ^ ^0.25 if block ~ ~ ~ #air run return run function game:player/ping

# at pinged location
execute if entity @s[team=red] run tag @a[team=red] add tmp_receive_location_ping
execute if entity @s[team=blue] run tag @a[team=blue] add tmp_receive_location_ping
execute if score @s double_ping_window matches 1.. run particle block_marker{block_state:{Name:"repeating_command_block",Properties:{conditional:"true"}}} ~ ~ ~ 0 0 0 0 1 force @a[tag=tmp_receive_location_ping]
execute if score @s double_ping_window matches 1.. run playsound block.note_block.pling player @a[tag=tmp_receive_location_ping] ~ ~ ~ 1.5 1.5 1
execute unless score @s double_ping_window matches 1.. run particle block_marker{block_state:{Name:"command_block",Properties:{conditional:"true"}}} ~ ~ ~ 0 0 0 0 1 force @a[tag=tmp_receive_location_ping]
execute unless score @s double_ping_window matches 1.. run playsound block.note_block.pling player @a[tag=tmp_receive_location_ping] ~ ~ ~ 1 1 1
execute unless score @s double_ping_window matches 1.. run scoreboard players set @s double_ping_window 15
tag @a remove tmp_receive_location_ping
scoreboard players add @s delay_ping 60