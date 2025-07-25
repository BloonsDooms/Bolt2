$scoreboard players set .dx calc $(dx)
$scoreboard players set .dy calc $(dy)
$scoreboard players set .dz calc $(dz)

$summon marker ~ ~ ~ {Tags:["map_editor","pos1","render_box","init","$(tag)"]}
$summon marker ~1 ~1 ~1 {Tags:["map_editor","pos2","render_box","init","$(tag)"]}

