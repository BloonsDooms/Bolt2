advancement revoke @s only game:coin

execute unless score @s coin_use matches 1.. run playsound minecraft:block.vault.eject_item master @a[tag=!lobby] ~ ~ ~ 1 0.8
execute unless score @s coin_use matches 1.. run playsound minecraft:ui.toast.out master @a[tag=!lobby] ~ ~ ~ 1 2
execute unless score @s coin_use matches 1.. run scoreboard players set @s[tag=!lobby] coin_use 16

tag @s add using_coin