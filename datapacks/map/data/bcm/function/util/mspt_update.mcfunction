# get ms since last update
scoreboard players operation .ms calc = .ms_old calc
execute store result score .ms_old calc run worldborder get
scoreboard players operation .ms calc -= .ms_old calc

execute if score .ms calc matches ..525 run scoreboard players operation limit commands += limit.step commands
execute if score .ms calc matches 550.. unless score limit commands matches ..10000 run scoreboard players operation limit commands -= limit.step commands
#title @a actionbar {score:{name:"limit",objective:"commands"}}

schedule function bcm:util/mspt_update 10t