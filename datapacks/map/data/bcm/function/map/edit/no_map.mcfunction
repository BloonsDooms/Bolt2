tellraw @a "random map selected - teleporting to editor without opening a map"
execute as @a[tag=!in_map_editor] run function bcm:editor/enter
tp @a 255 -60 255

return 1