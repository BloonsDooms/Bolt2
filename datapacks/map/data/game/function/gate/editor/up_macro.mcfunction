$execute if entity @s[y_rotation=0..90] positioned ^-1 ^$(current_height) ^ run clone \
    ^1 ^ ^ \
    ^$(width) ^ ^ \
    ^1 ^$(rel_mem_height) ^
$execute if entity @s[y_rotation=180..270] rotated ~180 ~ positioned ^-$(width) ^$(current_height) ^ run clone \
    ^1 ^ ^ \
    ^$(width) ^ ^ \
    ^1 ^$(rel_mem_height) ^
$execute unless data storage macro gate.sound.open positioned ^-1 ^$(current_height) ^ run fill ^1 ^ ^ ^$(width) ^ ^ air destroy
$execute if data storage macro gate.sound.open positioned ^-1 ^$(current_height) ^ run fill ^1 ^ ^ ^$(width) ^ ^ air replace
#$say up $(current_height) $(rel_mem_height)