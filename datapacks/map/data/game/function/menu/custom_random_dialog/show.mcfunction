$return run dialog show @s {\
    type: "minecraft:multi_action",\
    title: "custom random settings",\
    exit_action: {\
        label: [\
            "Close (",\
            {\
                translate: "key.keyboard.escape"\
            },\
            ")"\
        ]\
    },\
    actions: $(actions)\
}