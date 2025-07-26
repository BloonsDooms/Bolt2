# get ms since last update
scoreboard players operation .ms calc = .ms_old calc
execute store result score .ms_old calc run worldborder get
scoreboard players operation .ms calc -= .ms_old calc

execute if score .ms calc matches ..1050 run scoreboard players operation limit commands += limit.step commands
execute if score .ms calc matches 1100.. unless score limit commands matches ..10000 run scoreboard players operation limit commands -= limit.step commands
#tellraw @a {score:{name:"limit",objective:"commands"}}

schedule function bcm:util/mspt_update 1s