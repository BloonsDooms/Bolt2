return run dialog show @s {\
  type: "minecraft:notice",\
  title: "map settings",\
  inputs: [\
    {\
      type: "minecraft:single_option",\
      key: "",\
      label: "Map Color",\
      options: [\
        {\
          id: "1",\
          display: {\
            text: "Green",\
            color: "green"\
          }\
        },\
        {\
          id: "2",\
          display: {\
            text: "Red",\
            color: "red"\
          }\
        },\
        {\
          id: "3",\
          display: {\
            text: "Blue",\
            color: "blue"\
          }\
        },\
        {\
          id: "4",\
          display: {\
            text: "Yellow",\
            color: "yellow"\
          }\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      key: "",\
      label: "Size Rating",\
      options: [\
        {\
          id: "0",\
          display: "Very Small"\
        },\
        {\
          id: "1",\
          display: "Small"\
        },\
        {\
          id: "2",\
          display: "Medium"\
        },\
        {\
          id: "3",\
          display: "Large"\
        }\
      ]\
    },\
    {\
      type: "minecraft:boolean",\
      key: "",\
      label: "Disable walls",\
      initial: 0b,\
      on_true: "1",\
      on_false: "0"\
    }\
  ],\
  action: {\
    label: {\
      translate: "advancements.end.dragon_breath.title"\
    }\
  }\
}