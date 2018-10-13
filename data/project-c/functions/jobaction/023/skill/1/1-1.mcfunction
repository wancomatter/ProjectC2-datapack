scoreboard players add @s subcounter 1
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=!Red,distance=..1.8] run tag @s add 023-1dsummon
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=!Blue,distance=..1.8] run tag @s add 023-1dsummon
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=!Red,distance=..3.6] as @e[tag=Battle,team=!Red,distance=..3.6] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=023-11,team=RedDummy,distance=..1.8] run tag @e[tag=023-11,team=RedDummy,distance=..1.8] add 023-1dsummon
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=!Blue,distance=..3.6] as @e[tag=Battle,team=!Blue,distance=..3.6] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=023-11,team=BlueDummy,distance=..1.8] run tag @e[tag=023-11,team=BlueDummy,distance=..1.8] add 023-1dsummon
execute if entity @s[tag=023-1dsummon] run summon arrow ~ ~ ~ {CustomName:"{\"text\":\"Shot Wand\",\"color\":\"aqua\"}",Tags:["023-1d"],Motion:[0.0d,0.0d,0.0d],pickup:0,damage:6.0d,life:1200s,CustomPotionEffects:[{Id:2b,Amplifier:2b,Duration:120,Ambient:1b}]}
execute if entity @s[team=RedDummy] if entity @e[tag=023-1d] as @e[tag=Battle,team=!Red,distance=..3.6,sort=nearest] positioned as @s anchored eyes run tp @e[tag=023-1d] ^ ^ ^
execute if entity @s[team=RedDummy] if entity @e[tag=023-1d] positioned as @e[tag=023-1d] run tp @e[tag=023-1d,limit=1,sort=nearest] ^ ^ ^-1
execute if entity @s[team=BlueDummy] if entity @e[tag=023-1d] as @e[tag=Battle,team=!Blue,distance=..3.6,sort=nearest] positioned as @s anchored eyes run tp @e[tag=023-1d] ^ ^ ^
execute if entity @s[team=BlueDummy] if entity @e[tag=023-1d] positioned as @e[tag=023-1d] run tp @e[tag=023-1d,limit=1,sort=nearest] ^ ^ ^-1

execute if entity @e[tag=023-1d] at @e[tag=023-1d] store result score @e[tag=023-1d,limit=1,sort=nearest] CT1 run data get entity @s Pos[0] 100
execute if entity @e[tag=023-1d] at @e[tag=023-1d] store result score @e[tag=023-1d,limit=1,sort=nearest] CT2 run data get entity @s Pos[1] 100
execute if entity @e[tag=023-1d] at @e[tag=023-1d] store result score @e[tag=023-1d,limit=1,sort=nearest] CT3 run data get entity @s Pos[2] 100
tp @s ^ ^ ^1.4
particle minecraft:falling_dust snow ~ ~1.7775 ~ 1 1 1 1 8 normal @a
particle minecraft:falling_dust snow ~ ~1.7775 ~ 1 1 1 1 2 force @a
playsound minecraft:block.glass.break master @a ~ ~1.7775 ~ 1 2
execute if entity @e[tag=023-1d] at @e[tag=023-1d] store result score @e[tag=023-1d,limit=1,sort=nearest] counter_1 run data get entity @s Pos[0] 100
execute if entity @e[tag=023-1d] at @e[tag=023-1d] store result score @e[tag=023-1d,limit=1,sort=nearest] counter_2 run data get entity @s Pos[1] 100
execute if entity @e[tag=023-1d] at @e[tag=023-1d] store result score @e[tag=023-1d,limit=1,sort=nearest] counter_3 run data get entity @s Pos[2] 100
execute if entity @e[tag=023-1d] as @e[tag=023-1d] run scoreboard players operation @s counter_1 -= @s CT1
execute if entity @e[tag=023-1d] as @e[tag=023-1d] run scoreboard players operation @s counter_2 -= @s CT2
execute if entity @e[tag=023-1d] as @e[tag=023-1d] run scoreboard players operation @s counter_3 -= @s CT3
execute if entity @e[tag=023-1d] as @e[tag=023-1d] store result entity @s Motion[0] double 0.005 run scoreboard players get @s counter_1
execute if entity @e[tag=023-1d] as @e[tag=023-1d] store result entity @s Motion[1] double 0.005 run scoreboard players get @s counter_2
execute if entity @e[tag=023-1d] as @e[tag=023-1d] store result entity @s Motion[2] double 0.005 run scoreboard players get @s counter_3
execute if entity @e[tag=023-1d] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @e[tag=023-1d] run particle minecraft:falling_dust packed_ice ~ ~ ~ 2 2 2 0.2 300 normal @a
execute if entity @e[tag=023-1d] run kill @s
kill @s[scores={subcounter=80..}]