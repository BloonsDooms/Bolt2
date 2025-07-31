# old
# execute if score @s targets_and_crates matches 1 run function bcm:map/load_targets_and_crates
# execute if score @s targets_and_crates matches 2 run function bcm:map/destroy_targets_and_crates
# execute if score @s targets_and_crates matches 3 run function bcm:map/save/targets_and_crates

# new - process targets and crates seperately from each other because a target and a crate may share a position
# 10 = load t
# 11 = load c
# 20 = destroy t
# 21 = destroy c
# 22 = destroy both
# 30 = save t
# 31 = save c

scoreboard players reset @s targets_and_crates