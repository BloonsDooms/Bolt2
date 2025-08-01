# schedule replace doors
$data modify storage bcm schedule set value {load_point:"$(load_point)",dx:$(dx),dy:$(dy),dz:$(dz)}
data modify storage bcm schedule.doors set from storage bcm doors
schedule function bcm:place/replace_doors_schedule 5t

# map structure
$execute positioned $(load_point) run function bcm:map/load {mapName:"$(mapName)",new:false}