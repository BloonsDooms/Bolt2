scoreboard players enable @s master_menu
return run dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "map editor menu",\
  "exit_action": {\
    "label": {\
      "translate": "gui.cancel"\
    },\
    "action": {\
      "type": "minecraft:run_command",\
      "command": "trigger master_menu set 0"\
    }\
  },\
  "columns": 1,\
  "actions": [\
    {\
      "label": "display settings",\
      "tooltip": "toggle visibility for various map editor objects here",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger master_menu set 1"\
      }\
    },\
    {\
      "label": "adjust position & rotation",\
      "tooltip": "makes it easier to set spawn points and the intro camera precisely",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger master_menu set 2"\
      }\
    },\
    {\
      "label": "save map",\
      "tooltip": "this might take a while!\n\ncreates an item with your map's data stored on it, which you can save permanently in creative mode",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger master_menu set 3"\
      }\
    },\
    {\
      "label": "return to lobby",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger master_menu set 4"\
      }\
    }\
  ]\
}