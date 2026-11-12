#Kill para clck
give @p silverfish_spawn_egg[entity_data={id:"minecraft:silverfish",HasVisualFire:0b,OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Tags:["tnt_gn"]},item_model="minitnt",item_name='"Amplified TNT"'] 1
execute as @e[tag=tnt,nbt={attack:{}},limit=1] at @s run execute on passengers run kill @s
execute as @e[tag=tnt,nbt={attack:{}},limit=1] positioned ~ ~ ~ at @s run fill ~ ~1 ~ ~ ~-1 ~ minecraft:air replace minecraft:barrier
execute as @e[tag=tnt,nbt={attack:{}},limit=1] at @s run kill @s