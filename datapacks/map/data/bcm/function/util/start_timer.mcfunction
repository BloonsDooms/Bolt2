# reduce worldborder size by 10M blocks over 10k seconds -> 1 block = 1 ms
worldborder set 59999968
worldborder set 49999968 10000

# begin tracking server performance to calculate average mspt
scoreboard players set .ms_old calc 59999968
schedule function bcm:util/mspt_update 10t