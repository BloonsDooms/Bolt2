scoreboard players enable @s targets_and_crates
return run dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "targets & crates menu",\
  "inputs": [],\
  "exit_action": {\
    "label": {\
      "translate": "gui.cancel"\
    },\
    "action": {\
      "type": "minecraft:run_command",\
      "command": "trigger targets_and_crates set 0"\
    }\
  },\
  "columns": 1,\
  "actions": [\
    {\
      "label": [\
        "",\
        {\
          "text": "load",\
          "color": "yellow"\
        },\
        " saved targets & crates"\
      ],\
      "width": 200,\
      "action": {\
        "type": "minecraft:show_dialog",\
        "dialog": {\
          "type": "minecraft:confirmation",\
          "title": "are you sure?",\
          "body": {\
            "type": "minecraft:plain_message",\
            "contents": [\
              "This will ",\
              {\
                "text": "LOAD",\
                "color": "yellow"\
              },\
              " all saved targets & crates for this map into the editor.\n\nIf an existing target/crate is in the same position as a saved target/crate, the existing one will be ",\
              {\
                "text": "REPLACED",\
                "color": "yellow"\
              },\
              " with the saved one.\n\nOther existing targets & crates will be preserved.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          "yes": {\
            "label": [\
              "Yes, ",\
              {\
                "text": "load",\
                "color": "yellow"\
              },\
              " saved targets & crates"\
            ],\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 1"\
            }\
          },\
          "no": {\
            "label": {\
              "translate": "gui.cancel"\
            },\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 0"\
            }\
          }\
        }\
      }\
    },\
    {\
      "label": [\
        "",\
        {\
          "text": "destroy",\
          "color": "red"\
        },\
        " placed targets & crates"\
      ],\
      "width": 200,\
      "action": {\
        "type": "minecraft:show_dialog",\
        "dialog": {\
          "type": "minecraft:confirmation",\
          "title": "are you sure?",\
          "body": {\
            "type": "minecraft:plain_message",\
            "contents": [\
              "This will ",\
              {\
                "text": "DESTROY",\
                "color": "red"\
              },\
              " all placed targets & crates in the map editor.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          "yes": {\
            "label": [\
              "Yes, ",\
              {\
                "text": "destroy",\
                "color": "red"\
              },\
              " placed targets & crates"\
            ],\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 2"\
            }\
          },\
          "no": {\
            "label": {\
              "translate": "gui.cancel"\
            },\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 0"\
            }\
          }\
        }\
      }\
    },\
    {\
      "label": [\
        "",\
        {\
          "text": "save",\
          "color": "green"\
        },\
        " placed targets & crates"\
      ],\
      "width": 200,\
      "action": {\
        "type": "minecraft:show_dialog",\
        "dialog": {\
          "type": "minecraft:confirmation",\
          "title": "are you sure?",\
          "body": {\
            "type": "minecraft:plain_message",\
            "contents": [\
              "This will ",\
              {\
                "text": "SAVE",\
                "color": "green"\
              },\
              " placed targets & crates in the map editor, ",\
              {\
                "text": "OVERWRITING",\
                "color": "yellow"\
              },\
              " any previously saved targets & crates.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          "yes": {\
            "label": [\
              "Yes, ",\
              {\
                "text": "save",\
                "color": "green"\
              },\
              " and ",\
              {\
                "text": "overwrite",\
                "color": "yellow"\
              },\
            ],\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 3"\
            }\
          },\
          "no": {\
            "label": {\
              "translate": "gui.cancel"\
            },\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 0"\
            }\
          }\
        }\
      }\
    }\
  ]\
}