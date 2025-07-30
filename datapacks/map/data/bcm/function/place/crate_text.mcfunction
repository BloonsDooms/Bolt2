tag @s add this

setblock 0 -64 0 oak_sign strict
data modify block 0 -64 0 front_text.messages[0] set value [{text:"difficulty: "},{score:{name:"@n[type=interaction,tag=this]",objective:"bcm_crate_difficulty"}}]
data modify entity @s CustomName set from block 0 -64 0 front_text.messages[0]

tag @s remove this