gamerule commandBlockOutput false
scoreboard objectives add Timer dummy
scoreboard objectives add Explosion dummy
scoreboard objectives add silver minecraft.used:minecraft.silverfish_spawn_egg
title @a times 10 70 20
title @a title {"text":"☠ Amplified TNT ☠","color":"red","bold":true}
title @a actionbar {"text":"Version 1.21.8 • By: Elpollo097","color":"gray",italic:true}
execute as @a at @s run playsound minecraft:entity.tnt.primed ambient @a ~ ~ ~ 1 0.2
execute as @a at @s run particle minecraft:damage_indicator 1 1 1 ~ ~1 0.5 0.5 30 force
title @a times 20 100 20