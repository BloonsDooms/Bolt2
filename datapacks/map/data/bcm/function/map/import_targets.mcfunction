# map.targets: ["x y z", ...] -> tmp.map.targets: [{pos: "x y z"}, ...]
data modify storage bcm tmp_target.pos set from storage bcm map.targets[-1]
data modify storage bcm tmp.map.targets append from storage bcm tmp_target
data remove storage bcm map.targets[-1]

execute if data storage bcm map.targets[] run function bcm:map/import_targets