give @s stick[\
  item_model="minecraft:blue_bed",\
  item_name={translate:painting.minecraft.prairie_ride.title},\
  use_cooldown={seconds:1},\
  consumable={\
    sound:{sound_id:""},\
    consume_seconds:0,\
    animation:"none",\
    has_consume_particles:0b,\
    on_consume_effects:[{\
      type:"apply_effects",\
      effects:[{id:"minecraft:luck",amplifier:32b}]\
    }]\
  }\
]