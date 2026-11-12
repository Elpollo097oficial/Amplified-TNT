#Reset
execute as @e[tag=tnt] at @s run execute on passengers run kill @s
execute as @e[tag=tnt] positioned ~ ~ ~ at @s run fill ~ ~1 ~ ~ ~-1 ~ minecraft:air replace minecraft:barrier
execute as @e[tag=tnt] at @s run kill @s
scoreboard objectives remove Timer
scoreboard objectives remove Explosion
scoreboard objectives remove silver
say REMOVE ALL COMPLETE