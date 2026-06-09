# create dialog action
data modify storage maps:list tmp_dialog.action set value {\
    label: [\
        " - ",\
        {text: "Disabled", color: red}\
    ],\
    action: {\
        type: "minecraft:run_command"\
    }\
}
$data modify storage maps:list tmp_dialog.action.label prepend value "$(mapName)"
$scoreboard players set .dialog_enabled .custom_random $(enabled)
execute if score .dialog_enabled .custom_random matches 1 run data modify storage maps:list tmp_dialog.action.label[2] set value {text:"Enabled",color:green}

# trigger num
execute store result storage maps:list tmp_dialog.trigger_num int 1 run scoreboard players add .dialog .custom_random 1
function game:menu/custom_random_dialog/set_trigger_num with storage maps:list tmp_dialog

# add to list
data modify storage maps:list tmp_dialog.actions append from storage maps:list tmp_dialog.action

# next map
data remove storage maps:list tmp_dialog.maps[0]
execute if data storage maps:list tmp_dialog.maps[0] run function game:menu/custom_random_dialog/loop with storage maps:list tmp_dialog.maps[0]