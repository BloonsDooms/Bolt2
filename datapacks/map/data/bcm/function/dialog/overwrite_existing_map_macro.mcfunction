$dialog show @s {\
  "type": "minecraft:confirmation",\
  "title": [\
    "",\
    {\
      "text": "WARNING: ",\
      "color": "yellow"\
    },\
    "Map Already Exists"\
  ],\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": {\
      "translate": "There is already a map named \"%1$s\" loaded.\n\nIf you continue, the map stored on this item will OVERWRITE the existing map.\n\nIf you want to treat these as different maps, then cancel, and rename this item.\n\nIf you did this by mistake, click %2$s or press the Escape key.",\
      "with": [\
        $(mapName),\
        {\
          "translate": "gui.cancel"\
        }\
      ]\
    }\
  },\
  "yes": {\
    "label": "Overwrite existing map",\
    "action": {\
      "type": "minecraft:run_command",\
      "command": "trigger existing_map_response set 1"\
    }\
  },\
  "no": {\
    "label": {\
      "translate": "gui.cancel"\
    },\
    "action": {\
      "type": "minecraft:run_command",\
      "command": "trigger existing_map_response set 0"\
    }\
  }\
}
return 1