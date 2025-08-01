# initialize door
$tp @s $(pos) $(rotation) 0
$execute if score .1 .num matches $(isRed) run tag @s add red
tag @s add door

# loop
data remove storage bcm tmp.doors[-1]
execute if data storage bcm tmp.doors[-1] summon marker run function bcm:place/door_auto with storage bcm tmp.doors[-1]