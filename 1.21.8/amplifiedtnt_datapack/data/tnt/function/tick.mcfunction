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
execute as @e[type=item_display,tag=Generates,scores={Explosion=0..12}] at @s run execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder"},OnGround:1b},distance=..1,sort=nearest,limit=1] run particle minecraft:explosion ~ ~1.04 ~ 0 1 0 1 1 force
execute as @e[type=item_display,tag=Generates,scores={Explosion=0..12}] at @s run execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder"},OnGround:1b},distance=..1,limit=1,sort=nearest] run kill @s

#Detectar activador
#+X Redstone block
execute as @e[tag=Generates] at @s align xyz positioned ~ ~ ~ if block ~ ~-1 ~1 #tnt:x run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~1 #tnt:x run tag @s add Activate
#-X
execute as @e[tag=Generates] at @s align xyz positioned ~ ~ ~ if block ~ ~-1 ~-1 #tnt:x run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~-1 #tnt:x run tag @s add Activate
#+Z
execute as @e[tag=Generates] at @s align xyz positioned ~ ~ ~ if block ~1 ~-1 ~ #tnt:z run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~1 ~ ~ #tnt:z run tag @s add Activate
#-Z
execute as @e[tag=Generates] at @s align xyz positioned ~ ~ ~ if block ~-1 ~-1 ~ #tnt:z run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~-1 ~ ~ #tnt:z run tag @s add Activate
#+Y
execute as @e[tag=Generates] at @s align xyz positioned ~ ~-1 ~ if block ~ ~1 ~ #tnt:y run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~ ~1 ~ #tnt:y run tag @s add Activate
#+Y
execute as @e[tag=Generates] at @s align xyz positioned ~ ~-1 ~ if block ~ ~-1 ~ #tnt:y run tag @s add Activate
execute as @e[tag=tnt] at @s align xyz positioned ~ ~1 ~ if block ~ ~-1 ~ #tnt:y run tag @s add Activate

execute at @e[tag=Activate] run function tnt:activate
execute at @e[tag=Activate,type=interaction] run function tnt:activate

#Detectar nivel de explosion
execute as @e[type=item_display,tag=Generates,scores={Explosion=1}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"green","italic":true,"text":"1"}}
execute as @e[type=minecraft:item_display,scores={Explosion=1}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt1"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=2}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"green","italic":true,"text":"2"}}
execute as @e[type=minecraft:item_display,scores={Explosion=2}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt2"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=3}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"green","italic":true,"text":"3"}}
execute as @e[type=minecraft:item_display,scores={Explosion=3}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt3"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=4}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"green","italic":true,"text":"4"}}
execute as @e[type=minecraft:item_display,scores={Explosion=4}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt4"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=5}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"yellow","italic":true,"text":"5"}}
execute as @e[type=minecraft:item_display,scores={Explosion=5}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt5"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=6}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"yellow","italic":true,"text":"6"}}
execute as @e[type=minecraft:item_display,scores={Explosion=6}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt6"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=7}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"yellow","italic":true,"text":"7"}}
execute as @e[type=minecraft:item_display,scores={Explosion=7}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt7"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=8}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"yellow","italic":true,"text":"8"}}
execute as @e[type=minecraft:item_display,scores={Explosion=8}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt8"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=9}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"red","italic":true,"text":"9"}}
execute as @e[type=minecraft:item_display,scores={Explosion=9}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt9"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=10}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"red","italic":true,"text":"10"}}
execute as @e[type=minecraft:item_display,scores={Explosion=10}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt10"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=11}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"red","italic":true,"text":"11"}}
execute as @e[type=minecraft:item_display,scores={Explosion=11}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt11"}}}

execute as @e[type=item_display,tag=Generates,scores={Explosion=12}] at @s run data merge entity @s {CustomNameVisible:1b,CustomName:{"bold":true,"color":"red","italic":true,"text":"☢ 12 ☢"}}
execute as @e[type=minecraft:item_display,scores={Explosion=12}] at @s run data merge entity @s {item:{components:{"minecraft:item_model":"template:minitnt12"}}}