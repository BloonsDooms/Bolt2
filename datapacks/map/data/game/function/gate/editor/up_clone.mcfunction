$execute positioned ^-1 ^$(current_height) ^ run clone ^1 ^ ^ ^$(width) ^ ^ ~ 310 ~
$execute unless data storage macro gate.sound.open positioned ^-1 ^$(current_height) ^ run fill ^1 ^ ^ ^$(width) ^ ^ air destroy
$execute if data storage macro gate.sound.open positioned ^-1 ^$(current_height) ^ run fill ^1 ^ ^ ^$(width) ^ ^ air replace
$say up $(current_height)