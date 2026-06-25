# raycast
particle enchanted_hit ~ ~ ~ 0 0 0 0 1 normal @s
execute positioned ^ ^ ^0.25 if block ~ ~ ~ #air run return run function game:player/ping

# at pinged location
execute if entity @s[team=red] run tag @a[team=red] add tmp_receive_location_ping
execute if entity @s[team=blue] run tag @a[team=blue] add tmp_receive_location_ping
particle block_marker{block_state:{Name:"magenta_shulker_box"}} ~ ~ ~ 0 0 0 0 1 force @a[tag=tmp_receive_location_ping]
playsound block.note_block.pling player @a[tag=tmp_receive_location_ping] ~ ~ ~ 1 1 1
tag @a remove tmp_receive_location_ping
scoreboard players add @s delay_ping 60