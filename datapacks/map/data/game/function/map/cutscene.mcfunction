kill @e[tag=cutscene]

# temporary
$summon armor_stand $(introCutscenePosition) {NoGravity:1b,Rotation:[$(introCutsceneAngle)],Marker:0b,Invisible:1b,Tags:["cutscene","intro"]}

# new code - requires storing introCutscene as single string, implement later
#summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:0b,Invisible:1b,Tags:["cutscene","intro","init"]}
#$tp @n[type=armor_stand,tag=init] $(introCutscene)
#execute as @n[type=armor_stand,tag=init] at @s run tp @s ~ ~ ~ ~ 0
#tag @e[type=armor_stand] remove init