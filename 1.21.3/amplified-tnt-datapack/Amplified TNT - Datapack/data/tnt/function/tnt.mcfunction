#sonido
playsound minecraft:block.grass.place ambient @a ~ ~ ~ 0.2 0.4
#summon
execute as @e[type=minecraft:silverfish] positioned ~ ~ ~ at @s run summon minecraft:item_display ~ ~-.01 ~ {item:{id:"diamond",count:1b,components:{"minecraft:item_model":"minitnt"}},Tags:["Generates","tempo"],CustomName:'["",{"text":"0","color":"green","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,tag=Generates] at @s run data merge entity @s {transformation:{scale:[1f,1f,1f],translation:[0f,-0.5f,0f]}}
execute as @e[type=item_display,tag=!si] at @s run scoreboard players set @s Explosion 0
execute as @e[type=minecraft:silverfish] positioned ~ ~ ~ at @s run summon interaction ~ ~-.01 ~ {width:1.01f,height:1.06f,response:1b,Tags:["tnt"]}
execute as @e[type=minecraft:item_display] at @s run ride @s mount @e[type=minecraft:interaction,distance=..1,tag=tnt,limit=1,sort= nearest]
#bloque "colision"
execute as @e[type=minecraft:silverfish] positioned ~ ~ ~ at @s run fill ~ ~ ~ ~ ~ ~ barrier
#matar silver
execute as @e[type=silverfish,tag=tnt_gn] at @s run kill @s
stopsound @a hostile minecraft:entity.parrot.imitate.silverfish
stopsound @a hostile minecraft:entity.silverfish.hurt
stopsound @a hostile minecraft:entity.silverfish.step
stopsound @a hostile minecraft:entity.silverfish.ambient

#reset score
execute as @e[scores={silver=1..}] at @s run scoreboard players set @s silver 0