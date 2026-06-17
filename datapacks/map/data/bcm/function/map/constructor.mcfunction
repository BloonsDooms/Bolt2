## constructs a map object @ storage bcm tmp, containing its bleps-specific data, blocks, doors, and registry
data remove storage bcm tmp

# bleps-specific
data modify storage bcm tmp.map set from storage bcm map

# blocks
data modify storage bcm tmp.structure set from storage item_structures save

# doors
data modify storage bcm tmp.doors set from storage bcm doors

# registry
data modify storage bcm tmp.registry set value {\
    mapName:"Unnamed Map",\
    mapColor:"white",\
    mapIcon:"-",\
    mapTextScale:10.0,\
    mapSize:2,\
    mapModes:["ctf","infection","targets","tmi"],\
    isItemMap:true\
}
data modify storage bcm tmp.registry merge from storage bcm registry
data modify storage bcm tmp.registry.mapName set from entity @s SelectedItem.components."minecraft:custom_name"
execute unless data storage bcm tmp.registry.mapThumbnail run function bcm:map/get_preset_thumbnail