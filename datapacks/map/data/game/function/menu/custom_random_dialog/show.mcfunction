$return run dialog show @s {\
    type: "minecraft:multi_action",\
    title: "custom random settings",\
    after_action: "none",\
    pause: 0b,\
    exit_action: {\
        label: [\
            "Close (",\
            {\
                translate: "key.keyboard.escape"\
            },\
            ")"\
        ],\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger custom_random_dialog set -1"\
        }\
    },\
    actions: $(actions)\
}