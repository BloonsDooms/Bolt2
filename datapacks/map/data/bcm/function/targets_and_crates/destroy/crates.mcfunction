execute store result score crates.destroy calc if entity @e[type=interaction,tag=editor_crate]

execute as @e[type=interaction,tag=editor_crate] at @s run setblock ~ ~ ~ air destroy

tellraw @a ["destroyed ",{score:{name:"crates.destroy",objective:"calc"}}," crates"]