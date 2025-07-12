kill @e[tag=cutscene]

$execute if data storage maps:active {settings:{introCutsceneFlipped:true}} run summon armor_stand $(introCutscenePosition) {NoGravity:1b,Rotation:[$(introCutsceneAngle)],Marker:0b,Invisible:1b,Tags:["cutscene","intro","rev"]}
$execute unless data storage maps:active {settings:{introCutsceneFlipped:true}} run summon armor_stand $(introCutscenePosition) {NoGravity:1b,Rotation:[$(introCutsceneAngle)],Marker:0b,Invisible:1b,Tags:["cutscene","intro"]}