tag @s add editing
tag @s remove this

# passenger item to find player via "execute on origin"
summon item ~ ~ ~ {Item:{id:"yellow_stained_glass_pane",count:1},Tags:[no_kill,init],Invulnerable:1b,PickupDelay:32767s,Age:-32768s}
ride @n[type=item,tag=init] mount @s
execute on passengers run data modify entity @s Thrower set from entity @p UUID
execute on passengers run tag @s remove init

# get current settings values
data modify storage bcm macro merge from entity @s data.gate