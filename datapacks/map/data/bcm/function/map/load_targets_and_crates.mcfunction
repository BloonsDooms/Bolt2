# note that targets are markers and crates are interactions

execute store result score targets.load calc run data get storage bcm map.targets
scoreboard players set targets.replace calc 0
data modify storage bcm tmp.targets set from storage bcm map.targets
execute if data storage bcm tmp.targets[] at @n[type=marker,tag=load_point] summon marker run function bcm:place/target_auto with storage bcm tmp.targets[-1]
tellraw @a [{score:{name:"targets.load",objective:"calc"}}," targets loaded, replacing ",{score:{name:"targets.replace",objective:"calc"}}]

execute store result score crates.load calc run data get storage bcm map.crates
scoreboard players set crates.replace calc 0
data modify storage bcm tmp.crates set from storage bcm map.crates
execute if data storage bcm tmp.crates[] at @n[type=marker,tag=load_point] summon interaction run function bcm:place/crate_auto with storage bcm tmp.crates[-1]
tellraw @a [{score:{name:"crates.load",objective:"calc"}}," crates loaded, replacing ",{score:{name:"crates.replace",objective:"calc"}}]

data remove storage bcm tmp