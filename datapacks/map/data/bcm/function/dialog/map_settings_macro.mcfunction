$return run dialog show @s {\
  type: "minecraft:notice",\
  title: "map settings",\
  inputs: [\
    {\
      type: "minecraft:single_option",\
      key: "color",\
      label: "Map Color",\
      options: [\
        {\
          id: "1",\
          display: {\
            text: "Green",\
            color: "green"\
          },\
          initial: $(initial_green)b\
        },\
        {\
          id: "2",\
          display: {\
            text: "Red",\
            color: "red"\
          },\
          initial: $(initial_red)b\
        },\
        {\
          id: "3",\
          display: {\
            text: "Blue",\
            color: "blue"\
          },\
          initial: $(initial_blue)b\
        },\
        {\
          id: "4",\
          display: {\
            text: "Yellow",\
            color: "yellow"\
          },\
          initial: $(initial_yellow)b\
        },\
        {\
          id: "5",\
          display: {\
            text: "Black & White",\
            color: "white"\
          },\
          initial: $(initial_white)b\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      key: "size",\
      label: "Size Rating",\
      options: [\
        {\
          id: "0",\
          display: "Very Small",\
          initial: $(initial_very_small)b\
        },\
        {\
          id: "1",\
          display: "Small",\
          initial: $(initial_small)b\
        },\
        {\
          id: "2",\
          display: "Medium",\
          initial: $(initial_medium)b\
        },\
        {\
          id: "3",\
          display: "Large",\
          initial: $(initial_large)b\
        }\
      ]\
    },\
    {\
      type: "minecraft:boolean",\
      key: "disable_walls",\
      label: "Disable walls",\
      initial: $(initial_disable_walls)b,\
      on_true: "1",\
      on_false: "0"\
    }\
  ],\
  action: {\
    label: {\
      translate: "advancements.end.dragon_breath.title"\
    },\
    action: {\
      type: "minecraft:dynamic/run_command",\
      template: "trigger map_settings set $(macro)"\
    }\
  }\
}