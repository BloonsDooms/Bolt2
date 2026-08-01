$execute if entity @s[y_rotation=0] positioned ~-1 ~ ~ run clone \
    ~1 $(mem_height) ~ \
    ~$(width) $(mem_height) ~ \
    ~1 ~$(current_height) ~ \
replace move
$execute if entity @s[y_rotation=90] positioned ~ ~ ~-1 run clone \
    ~ $(mem_height) ~1 \
    ~ $(mem_height) ~$(width) \
    ~ ~$(current_height) ~1 \
replace move
$execute if entity @s[y_rotation=180] positioned ~-$(width) ~ ~ run clone \
    ~1 $(mem_height) ~ \
    ~$(width) $(mem_height) ~ \
    ~1 ~$(current_height) ~ \
replace move
$execute if entity @s[y_rotation=270] positioned ~ ~ ~-$(width) run clone \
    ~ $(mem_height) ~1 \
    ~ $(mem_height) ~$(width) \
    ~ ~$(current_height) ~1 \
replace move
#$say down $(current_height) $(mem_height)

# 0 -> +Z ->L +X
# 90 -> -X ->L +Z
# 180 -> -Z ->L -X
# 270 -> +X ->L -Z