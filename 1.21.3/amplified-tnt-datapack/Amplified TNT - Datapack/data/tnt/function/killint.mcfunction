execute as @e[tag=tnt,nbt={interaction:{}}] at @s run execute on passengers run kill @s
execute as @e[tag=tnt,nbt={interaction:{}}] positioned ~ ~ ~ at @s run fill ~ ~1 ~ ~ ~-1 ~ minecraft:air replace minecraft:barrier
kill @s