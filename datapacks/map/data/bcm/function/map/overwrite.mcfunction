$data modify storage bcm maps[{registry:{mapName:"$(mapName)"}}] set from storage bcm tmp
$data modify storage maps:list maps[{mapName:"$(mapName)"}] set from storage bcm tmp.registry