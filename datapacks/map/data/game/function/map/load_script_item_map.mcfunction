# clones destructible blocks into map area from 187 blocks below
$say load script item map $(x1) $(y1) $(z1) $(x2) $(y2) $(z2)
$execute positioned $(x1) -187 $(z1) run clone ~ ~$(y1) ~ $(x2) ~$(y2) $(z2) ~ $(y1) ~ strict filtered #game:destructible normal