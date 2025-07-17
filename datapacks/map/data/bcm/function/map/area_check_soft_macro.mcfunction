# in area
$execute positioned $(start) positioned ~-1.0 ~-0.5 ~-1.0 if entity @s[$(area)] run return 1

# not in area
return fail