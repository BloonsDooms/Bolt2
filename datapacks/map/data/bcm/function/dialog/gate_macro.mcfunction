$return run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Gate Setup",\
  inputs: [\
    {\
      type: "minecraft:number_range",\
      key: "height",\
      label: "Height",\
      label_format: "%s: %s blocks",\
      start: 1,\
      end: 9,\
      step: 1,\
      initial: $(height)\
    },\
    {\
      type: "minecraft:number_range",\
      key: "width",\
      label: "Width",\
      label_format: "%s: %s blocks",\
      start: 1,\
      end: 9,\
      step: 1,\
      initial: $(width)\
    },\
    {\
      type: "minecraft:number_range",\
      key: "time",\
      label: "Opening Time",\
      label_format: "%s: %s ticks/block",\
      start: 1,\
      end: 100,\
      step: 1,\
      initial: $(time)\
    },\
    {\
      type: "minecraft:single_option",\
      key: "sound",\
      label: "Sound",\
      options: [\
        {\
          id: "1",\
          display: "Inherit from blocks",\
          initial: $(sound_inherit)b\
        },\
        {\
          id: "2",\
          display: "Piston",\
          initial: $(sound_piston)b\
        },\
        {\
          id: "3",\
          display: "Inherit/Piston",\
          initial: $(sound_inherit_piston)b\
        }\
      ]\
    }\
  ],\
  exit_action: {\
    label: {\
      translate: "gui.cancel"\
    },\
    action: {\
      type: "minecraft:run_command",\
      command: "trigger set_gate set -2"\
    }\
  },\
  actions: [\
    {\
      label: {\
        translate: "selectWorld.edit.save"\
      },\
      action: {\
        type: "minecraft:dynamic/run_command",\
        template: "trigger set_gate set $(macro)"\
      }\
    },\
    {\
      label: {\
        translate: "dataPack.validation.reset"\
      },\
      action: {\
        type: "minecraft:run_command",\
        command: "trigger set_gate set -1"\
      }\
    }\
  ]\
}