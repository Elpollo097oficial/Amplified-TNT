#Timer Start
execute as @e[type=minecraft:interaction,tag=Activate] at @s run scoreboard players add @s Timer 1
execute as @e[type=minecraft:item_display,tag=Activate] at @s run scoreboard players add @s Timer 1
execute as @e[tag=Generates,tag=Activate,scores={Timer=50..}] at @s run particle minecraft:firework ~ ~ ~ 0 1 0 0.001 2 force

#Particules
execute at @e[tag=Generates,tag=Activate,scores={Timer=1..80}] run particle flame ~ ~ ~ 0 0.5 0 0.001 1 force
execute at @e[tag=Generates,tag=Activate,scores={Timer=80..}] run particle minecraft:spit ~ ~ ~ 0 1 0 0.005 2 force @a
execute at @e[tag=Generates,tag=Activate,scores={Timer=80}] run playsound minecraft:block.respawn_anchor.charge ambient @a ~ ~ ~ 1 0.5 0
execute at @e[tag=Generates,tag=Activate,scores={Timer=160..}] run stopsound @a ambient minecraft:block.respawn_anchor.charge
execute at @e[tag=Generates,tag=Activate,scores={Timer=..0}] run playsound minecraft:block.respawn_anchor.deplete ambient @a ~ ~ ~ 1 0 0

#Detectar time 0
execute as @e[tag=Generates,tag=Activate,scores={Timer=160..}] at @s run tag @s add Timer
execute as @e[tag=tnt,tag=Activate,scores={Timer=167..}] at @s run tag @s add Timer

#Timer End

execute as @e[tag=Generates,scores={Timer=160..}] run scoreboard players set @s Timer -21600

#Reset
execute as @e[tag=tnt,tag=Timer,limit=1] at @s run function tnt:killex

#Generates Creeper
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=0}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=0}] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:3,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}

execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=1}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=1}] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:6,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}

execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=2}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=3}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=4}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=5}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=6}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=7}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=8}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=9}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=10}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=11}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=12}] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 2

execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=2}] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:6,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=3}] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:9,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=4}] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:12,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=5}] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:15,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=6}] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:18,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=7}] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:21,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=8}] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:24,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
execute as @e[tag=Generates,tag=Timer,tag=Activate,scores={Explosion=9}] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:27,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b} 
execute as @e[tag = Generates , tag = Timer , tag = Activate , scores = { Explosion =10 }] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:30,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
execute as @e[tag=Generates,tag=Timer,tag=Activate , scores = { Explosion =11 } ] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:33,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
execute as @e[tag=Generates,tag=Timer,tag=Activate , scores = { Explosion =12 } ] at @s run summon creeper ~ ~-2 ~ {ExplosionRadius:36,Fuse:5,ignited:1,CanPickUpLoot:1b,FallFlying:1b,HasVisualFire:1b,Invulnerable:1b,LeftHanded:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}