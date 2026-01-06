# REWORK this also probably shouldn't be here, this is more a forward facing config file than for scripts.
$data modify storage bcm map set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].map
function bcm:map/convert_to_game