$return run dialog show @s {\
  type: "minecraft:confirmation",\
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
      type: "minecraft:boolean",\
      key: "one_way",\
      label: "One-Way",\
      on_true: "1",\
      on_false: "0",\
      initial: $(one_way)b,\
    }\
  ],\
  yes: {\
    label: {\
      translate: "gui.done"\
    },\
    action: {\
      type: "minecraft:dynamic/run_command",\
      template: "trigger set_gate set $(macro)"\
    }\
  },\
  no: {\
    label: {\
      translate: "gui.cancel"\
    },\
    action: {\
      type: "minecraft:run_command",\
      command: "trigger set_gate set -1"\
    }\
  }\
}