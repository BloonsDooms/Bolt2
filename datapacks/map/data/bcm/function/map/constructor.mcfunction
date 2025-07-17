## constructs a map object @ storage bcm tmp, containing its bleps-specific data, blocks, and registry
data remove storage bcm tmp

# bleps-specific
data modify storage bcm tmp.map set from storage bcm map

# convert targets data
data remove storage bcm tmp.map.targets
data remove storage bcm tmp_target
execute if data storage bcm map.targets[] run function bcm:map/import_targets

# blocks
data modify storage bcm tmp.structure set from storage item_structures save

# registry
data modify storage bcm tmp.registry set value {\
    mapName:"Unnamed Map",\
    mapColor:"white",\
    mapIcon:"-",\
    mapTextScale:10.0,\
    mapAuthors:[{selector:"@e[type=pig]"}],\
    mapSize:2,\
    mapModes:["ctf","infection","targets","tmi"],\
    MapIcon:{blocks:[I;425984,163841,2,1,3,196609,1212416,98305,3,1,3,1,2,1,2,131073,1212416,163841,2,1,3,196609,1212416,4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,1,753664,163841,3,131073,4,851969,4,131073,3,262145,3,1,3,196609,4,65537,4,131073,4,196609,4,65537,4,1,4,65537,4,196609,3,1,3,262145,3,131073,4,65537,4,131073,4,196609,4,262145,4,131073,3,589825,4,65537,4,131073,4,196609,4,262145,4,524289,2,1,3,131073,4,65537,4,131073,4,196609,4,262145,4,131073,3,1,2,196609,3,1,3,1,2,1,2,65537,4,851969,4,65537,2,1,2,1,3,1,3,196609,2,1,3,131073,4,65537,4,393217,4,131073,4,65537,4,131073,3,1,2,524289,4,65537,4,393217,4,131073,4,65537,4,524289,2,196609,4,65537,4,393217,4,262145,4,196609,2,327681,2,1,2,65537,4,65537,4,393217,4,262145,4,65537,2,1,2,327681,2,196609,4,851969,4,196609,2,131073,1736704,32769,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,98305,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,98305,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,0,5,1802241,1736704],index:["air","black_concrete","ochre_froglight[axis=x,]","pearlescent_froglight[axis=x,]","white_concrete","mud"],size:[2,21,27]},\
    isItemMap:true\
}
data modify storage bcm tmp.registry.mapName set from entity @s SelectedItem.components."minecraft:custom_name"