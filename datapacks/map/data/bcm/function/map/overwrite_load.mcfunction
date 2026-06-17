# replace doors & rebuild menu, then load map structure once system is free
$data modify storage bcm schedule set value {load_point:"$(load_point)",dx:$(dx),dy:$(dy),dz:$(dz),mapName:"$(mapName)"}
data modify storage bcm tmp.doors set from storage bcm doors
function bcm:place/replace_doors
function game:map/register_maps
schedule function bcm:map/load_schedule 2t