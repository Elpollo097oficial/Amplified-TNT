playsound minecraft:block.grass.break ambient @a ~ ~ ~ 1 0.1 0.2
execute as @e[tag=tnt,nbt={attack:{}},limit=1] positioned ~ ~ ~ at @s run fill ~ ~ ~ ~ ~ ~ air
execute as @e[tag=tnt,nbt={attack:{}},limit=1] at @s run function tnt:kill
execute as @e[tag=tnt] run data remove entity @s attack