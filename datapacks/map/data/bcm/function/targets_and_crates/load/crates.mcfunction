execute store result score crates.load calc run data get storage bcm map.crates
scoreboard players set crates.replace calc 0
data modify storage bcm tmp.crates set from storage bcm map.crates
execute if data storage bcm tmp.crates[] at @n[type=marker,tag=load_point] summon interaction run function bcm:place/crate_auto with storage bcm tmp.crates[-1]
tellraw @a [{score:{name:"crates.load",objective:"calc"}}," crates loaded, replacing ",{score:{name:"crates.replace",objective:"calc"}}]

data remove storage bcm tmp