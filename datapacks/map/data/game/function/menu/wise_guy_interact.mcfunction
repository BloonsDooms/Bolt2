
execute store result score .rand .calc run random value 0..10

# banter
execute if score .rand .calc matches 0 run tellraw @s [{"text":"[Wise Worm] "},{"text":"I'm learning a technique to punch arrows. I expect to have it figured out by tomorrow."}]
execute if score .rand .calc matches 1 run tellraw @s [{"text":"[Wise Worm] "},{"text":"Crouching with make you appear plant-like, making you less likely to get shot."}]
execute if score .rand .calc matches 2 run tellraw @s [{"text":"[Wise Worm] "},{"text":"Sometimes the best way to dodge an arrow is not to move."}]
execute if score .rand .calc matches 3 run tellraw @s [{"text":"[Wise Worm] "},{"text":"A scared man puts down a turret. A confused man is the turret."}]
execute if score .rand .calc matches 4 run tellraw @s [{"text":"[Wise Worm] "},{"text":"When losing, a great warrior will decide to win instead."}]
execute if score .rand .calc matches 5 run tellraw @s [{"text":"[Wise Worm] "},{"text":"A smart strategian will edit in a shortcut before battle."}]
execute if score .rand .calc matches 6 run tellraw @s [{"text":"[Wise Worm] "},{"text":"Success requires a rested mind. Mid-game power naps are a wise use of time."}]
execute if score .rand .calc matches 7 run tellraw @s [{"text":"[Wise Worm] "},{"text":"A foe cannot dodge a mini-tnt if you yourself do not know where it is going."}]
execute if score .rand .calc matches 8 run tellraw @s [{"text":"[Wise Worm] "},{"text":"Always pick a bow that will deal enough damage."}]
execute if score .rand .calc matches 9 run tellraw @s [{"text":"[Wise Worm] "},{"text":"If you make a fort that is impossible to enter, you may have made a fort that is impossible to leave."}]
execute if score .rand .calc matches 10 run tellraw @s [{"text":"[Wise Worm] "},{"text":"You do not have to enter battle right away, sometimes it's right to wait for a full quiver."}]

execute as @e[tag=wise_guy_interact] run data remove entity @s interaction


