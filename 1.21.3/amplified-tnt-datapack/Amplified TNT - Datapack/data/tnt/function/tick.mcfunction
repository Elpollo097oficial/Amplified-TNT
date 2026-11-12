#ALL

#Generar tnt
execute as @e[scores={silver=1..}] at @s run function tnt:tnt

#Detectar cuando le pegas

execute as @e[tag=tnt] on attacker at @s run function tnt:kill

#Detectar cuando interactuas

execute as @e[type=interaction,tag=tnt] on target run function tnt:give

#Si no esta cerca de

execute if data entity @s attack run function tnt:kill

#Detectar level de explosion
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder"},OnGround:1b}] at @s run execute as @e[type=item_display,tag=Generates,tag=tempo,distance=..1,sort=nearest,limit=1] run scoreboard players add @s Explosion 1
execute as @e[type=item_display,scores={Explosion=1..}] at @s run tag @s add si
execute as @e[type=item_display,tag=Generates,tag=tempo,tag=Activate,sort=nearest] at @s run execute as @e[type=item_display,tag=Generates,tag=!tempo,distance=..1,sort=nearest,limit=1,scores={Explosion=1..12}] run scoreboard players add @s Explosion 1
execute as @e[type=item_display,tag=Generates,scores={Explosion=0..12}] at @s run execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder"},OnGround:1b},distance=..1,sort=nearest,limit=1] run scoreboard players add @s Almacen 1
execute as @e[type=item_display,tag=Generates,scores={Explosion=0..12}] at @s run execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder"},OnGround:1b},distance=..1,sort=nearest,limit=1] run particle minecraft:explosion ~ ~1.04 ~ 0 1 0 1 1 force
execute as @e[type=item_display,tag=Generates,scores={Explosion=0..12}] at @s run execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder"},OnGround:1b},distance=..1,limit=1,sort=nearest] run kill @s

#Detectar activador
#+X
execute as @e[tag=Generates] at @s align xyz positioned ~ ~ ~ if block ~ ~-1 ~1 minecraft:redstone_block run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~1 minecraft:redstone_block run tag @s add Activate
#-X
execute as @e[tag=Generates] at @s align xyz positioned ~ ~ ~ if block ~ ~-1 ~-1 minecraft:redstone_block run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~-1 minecraft:redstone_block run tag @s add Activate
#+Z
execute as @e[tag=Generates] at @s align xyz positioned ~ ~ ~ if block ~1 ~-1 ~ minecraft:redstone_block run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~1 ~ ~ minecraft:redstone_block run tag @s add Activate
#-Z
execute as @e[tag=Generates] at @s align xyz positioned ~ ~ ~ if block ~-1 ~-1 ~ minecraft:redstone_block run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~-1 ~ ~ minecraft:redstone_block run tag @s add Activate
#+Y
execute as @e[tag=Generates] at @s align xyz positioned ~ ~-1 ~ if block ~ ~1 ~ minecraft:redstone_block run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~ ~1 ~ minecraft:redstone_block run tag @s add Activate
#+Y
execute as @e[tag=Generates] at @s align xyz positioned ~ ~-1 ~ if block ~ ~-1 ~ minecraft:redstone_block run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~ ~-1 ~ minecraft:redstone_block run tag @s add Activate

execute at @e[tag=Activate] run function tnt:activate
execute at @e[tag=Activate,type=interaction] run function tnt:activate

#Detectar nivel de explosion
#Estetica
#1
execute as @e[type=item_display,tag=Generates,scores={Explosion=1}] at @s run data merge entity @s {CustomName:'["",{"text":"1","color":"green","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=1}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt1"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=2}] at @s run data merge entity @s {CustomName:'["",{"text":"2","color":"green","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=2}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt2"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=3}] at @s run data merge entity @s {CustomName:'["",{"text":"3","color":"green","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=3}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt3"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=4}] at @s run data merge entity @s {CustomName:'["",{"text":"4","color":"green","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=4}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt4"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=5}] at @s run data merge entity @s {CustomName:'["",{"text":"5","color":"yellow","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=5}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt5"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=6}] at @s run data merge entity @s {CustomName:'["",{"text":"6","color":"yellow","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=6}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt6"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=7}] at @s run data merge entity @s {CustomName:'["",{"text":"7","color":"yellow","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=7}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt7"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=8}] at @s run data merge entity @s {CustomName:'["",{"text":"8","color":"yellow","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=8}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt8"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=9}] at @s run data merge entity @s {CustomName:'["",{"text":"9","color":"red","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=9}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt9"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=10}] at @s run data merge entity @s {CustomName:'["",{"text":"10","color":"red","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=10}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt10"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=11}] at @s run data merge entity @s {CustomName:'["",{"text":"11","color":"red","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=11}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt11"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=12}] at @s run data merge entity @s {CustomName:'["",{"text":"☢ 12 ☢","color":"red","bold":true}]',CustomNameVisible:1b}
execute as @e[type=minecraft:item_display,scores={Explosion=12}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"minecraft:minitnt12"}}}