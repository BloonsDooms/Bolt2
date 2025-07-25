# if end = 0, treated as end of input string

$data modify storage bcm tmp.out set value $(str)

$scoreboard players set #tmp calc $(end)
$execute unless score #tmp calc matches 0 run data modify storage bcm tmp.out set string storage bcm tmp.out $(start) $(end)
$execute if score #tmp calc matches 0 run data modify storage bcm tmp.out set string storage bcm tmp.out $(start)