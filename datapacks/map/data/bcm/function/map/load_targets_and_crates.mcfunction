execute store result score targets.try calc run data get storage bcm map.targets
data modify storage bcm tmp.targets set from storage bcm map.targets
execute if data storage bcm tmp.targets[] at @n[type=marker,tag=load_point] summon marker run function bcm:place/target_auto with storage bcm tmp.targets[-1]
scoreboard players operation targets.success calc = targets.try calc
scoreboard players operation targets.success calc -= targets.fail calc

execute store result score crates.try calc run data get storage bcm map.crates
data modify storage bcm tmp.crates set from storage bcm map.crates
execute if data storage bcm tmp.crates[] at @n[type=marker,tag=load_point] summon interaction run function bcm:place/crate_auto with storage bcm tmp.crates[-1]
scoreboard players operation crates.success calc = crates.try calc
scoreboard players operation crates.success calc -= crates.fail calc

data remove storage bcm tmp