summon armor_stand ~ ~ ~ {Tags:["023-7-23p","023-7-23dummy"],Invisible:1b,NoGravity:1b,Marker:1b}
summon armor_stand ~ ~ ~ {Tags:["023-7-23pDummy"],Invisible:1b,NoGravity:1b,Marker:1b}
execute as @e[tag=023-7-23pDummy] run spreadplayers ~ ~ 3 6 false @s
execute store result entity @e[tag=023-7-23dummy,limit=1] Pos[0] double 0.1 run data get entity @e[tag=023-7-23pDummy,limit=1] Pos[0] 10
execute store result entity @e[tag=023-7-23dummy,limit=1] Pos[2] double 0.1 run data get entity @e[tag=023-7-23pDummy,limit=1] Pos[2] 10
execute if entity @s[team=RedDummy] run team join RedDummy @e[tag=023-7-23dummy]
execute if entity @s[team=BlueDummy] run team join BlueDummy @e[tag=023-7-23dummy]
kill @e[tag=023-7-23pDummy]
execute positioned as @e[tag=023-7-23dummy] run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.5 100 normal @a
execute positioned as @e[tag=023-7-23dummy] run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.5 25 force @a
tag @e[tag=023-7-23dummy] remove 023-7-23dummy
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.4 1.6
data merge block -95 5 -65 {auto:1b}