# validate item
execute unless data entity @s SelectedItem.components."minecraft:custom_data".bleps_map run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"This isn\'t a custom bleps map item!"'}

# bleps-specific map data
data modify storage bcm map set from entity @s SelectedItem.components."minecraft:custom_data".bleps_map

# blocks
function item_structures:import

# save map to array
data remove storage bcm tmp
data modify storage bcm tmp.map set from storage bcm map
data modify storage bcm tmp.structure set from storage item_structures save
data modify storage bcm tmp.registry set value {\
    mapName:"Unnamed Map",\
    mapColor:"white",\
    mapIcon:"-",\
    mapTextScale:10.0,\
    mapAuthors:[{selector:"@e[type=pig]"}],\
    mapSize:2,\
    mapModes:["ctf","infection","targets","tmi"],\
    mapPack:"item"\
}
execute if data entity @s SelectedItem.components."minecraft:custom_name" run data modify storage bcm map.name set from entity @s SelectedItem.components."minecraft:custom_name"
# copy random-map icon (solid black)
data modify storage bcm tmp.registry.MapIcon set from storage maps:list maps[0].MapIcon
data modify storage bcm maps append from storage bcm tmp
data remove storage bcm tmp