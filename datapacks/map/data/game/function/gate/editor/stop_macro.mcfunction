$execute if entity @s[y_rotation=0] positioned ~-1 310 ~ run clone \
    ~1 ~1 ~ \
    ~$(width) ~$(current_height) ~ \
    ~1 $(y) ~ \
replace move
$execute if entity @s[y_rotation=90] positioned ~ 310 ~-1 run clone \
    ~ ~1 ~1 \
    ~ ~$(current_height) ~$(width) \
    ~ $(y) ~1 \
replace move
$execute if entity @s[y_rotation=180] positioned ~-$(width) 310 ~ run clone \
    ~1 ~1 ~ \
    ~$(width) ~$(current_height) ~ \
    ~1 $(y) ~ \
replace move
$execute if entity @s[y_rotation=270] positioned ~ 310 ~-$(width) run clone \
    ~ ~1 ~1 \
    ~ ~$(current_height) ~$(width) \
    ~ $(y) ~1 \
replace move