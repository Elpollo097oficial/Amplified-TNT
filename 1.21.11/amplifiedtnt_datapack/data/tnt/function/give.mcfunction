#al dar click
#se lo da el que dio click

give @p silverfish_spawn_egg[entity_data={id:"minecraft:silverfish",HasVisualFire:0b,OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Tags:["tnt_gn"]},item_model="template:minitnt",item_name='"Amplified TNT"'] 1

execute as @e[tag=tnt,nbt={interaction:{}}] at @s run function tnt:killint
execute as @e[type=interaction,tag=tnt] run data remove entity @s interaction