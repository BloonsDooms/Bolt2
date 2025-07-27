# waits until start point is loaded, then begins loading and kills start point
execute unless entity @n[type=marker,tag=start_point] run return run schedule function item_structures:load_kill 1t

function item_structures:load
kill @n[type=marker,tag=start_point]