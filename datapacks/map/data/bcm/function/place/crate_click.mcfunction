# increment difficulty by 1, go back to 1 after 3
scoreboard players add @s bcm_crate_difficulty 1
execute if score @s bcm_crate_difficulty matches 4.. run scoreboard players set @s bcm_crate_difficulty 1

# text
function bcm:place/crate_text

# sound
execute on target at @s run playsound ui.button.click block @s ~ ~ ~ 0.5 1.5
data remove entity @s interaction