tag @s remove inspawn
$execute as @s[$(area)] run tag @s add inspawn
scoreboard players operation @s[tag=inspawn] invul = .map_setting invul