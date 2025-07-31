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
        " targets"\
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
              " all saved ",\
              {\
                "text": "TARGETS",\
                "color": "red"\
              },\
              " for this map into the editor.\n\nCurrently existing targets will be preserved.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          "yes": {\
            "label": [\
              "Yes, ",\
              {\
                "text": "load",\
                "color": "yellow"\
              },\
              " saved targets"\
            ],\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 10"\
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
          "text": "load",\
          "color": "yellow"\
        },\
        " crates "\
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
              " all saved ",\
              {\
                "text": "CRATES",\
                "color": "gold"\
              },\
              " for this map into the editor.\n\nIf an existing crate is in the same position as a saved crate, the existing crate will be ",\
              {\
                "text": "REPLACED",\
                "color": "yellow"\
              },\
              " with the saved crate.\n\nOther existing crates will be preserved.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          "yes": {\
            "label": [\
              "Yes, ",\
              {\
                "text": "load",\
                "color": "yellow"\
              },\
              " saved crates"\
            ],\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 11"\
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
        " targets"\
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
              " all placed ",\
              {\
                "text": "TARGETS",\
                "color": "red"\
              },\
              " in the map editor.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          "yes": {\
            "label": [\
              "Yes, ",\
              {\
                "text": "destroy",\
                "color": "red"\
              },\
              " placed targets"\
            ],\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 20"\
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
        " crates"\
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
              " all placed ",\
              {\
                "text": "CRATES",\
                "color": "gold"\
              },\
              " in the map editor.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          "yes": {\
            "label": [\
              "Yes, ",\
              {\
                "text": "destroy",\
                "color": "red"\
              },\
              " placed crates"\
            ],\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 21"\
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
        " all"\
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
              " all placed ",\
              {\
                "text": "TARGETS and CRATES",\
                "color": "light_purple"\
              },\
              " in the map editor.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          "yes": {\
            "label": [\
              "Yes, ",\
              {\
                "text": "destroy",\
                "color": "red"\
              },\
              " placed targets and crates"\
            ],\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 22"\
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
        " targets"\
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
              " placed ",\
              {\
                "text": "TARGETS",\
                "color": "red"\
              },\
              "in the map editor, ",\
              {\
                "text": "OVERWRITING",\
                "color": "yellow"\
              },\
              " any previously saved targets.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          "yes": {\
            "label": [\
              "Yes, ",\
              {\
                "text": "save",\
                "color": "green"\
              },\
              " targets and ",\
              {\
                "text": "overwrite",\
                "color": "yellow"\
              },\
            ],\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 30"\
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
        " crates"\
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
              " placed ",\
              {\
                "text": "CRATES",\
                "color": "gold"\
              },\
              " in the map editor, ",\
              {\
                "text": "OVERWRITING",\
                "color": "yellow"\
              },\
              " any previously saved crates.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          "yes": {\
            "label": [\
              "Yes, ",\
              {\
                "text": "save",\
                "color": "green"\
              },\
              " crates and ",\
              {\
                "text": "overwrite",\
                "color": "yellow"\
              },\
            ],\
            "width": 250,\
            "action": {\
              "type": "minecraft:run_command",\
              "command": "trigger targets_and_crates set 31"\
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