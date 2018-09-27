execute if entity @s[team=Red] if entity @e[tag=SculptureStandR,distance=..3,scores={counter_1=..2}] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2
execute if entity @s[team=Red] if entity @e[tag=SculptureStandR,distance=..3,scores={counter_1=..2}] run particle block minecraft:quartz_block ~ ~1 ~ 0 0 0 2 50 normal @a
execute if entity @s[team=Red] run scoreboard players add @e[tag=SculptureStandR,distance=..3,scores={counter_1=..2}] counter_1 1
execute if entity @s[team=Red] run data merge entity @e[tag=SculptureStandR,distance=..3,scores={counter_1=1},limit=1] {ArmorItems:[{id:leather_boots,Count:1b,tag:{Unbreakable:1b,display:{color:16711680}}},{id:leather_leggings,Count:1b,tag:{Unbreakable:1b,display:{color:16711680}}},{},{}]}
execute if entity @s[team=Red] run data merge entity @e[tag=SculptureStandR,distance=..3,scores={counter_1=2},limit=1] {ArmorItems:[{id:leather_boots,Count:1b,tag:{Unbreakable:1b,display:{color:16711680}}},{id:leather_leggings,Count:1b,tag:{Unbreakable:1b,display:{color:16711680}}},{id:leather_chestplate,Count:1b,tag:{Unbreakable:1b,display:{color:16711680}}},{}]}
execute if entity @s[team=Red] run data merge entity @e[tag=SculptureStandR,distance=..3,scores={counter_1=3},limit=1] {ArmorItems:[{id:leather_boots,Count:1b,tag:{Unbreakable:1b,display:{color:16711680}}},{id:leather_leggings,Count:1b,tag:{Unbreakable:1b,display:{color:16711680}}},{id:leather_chestplate,Count:1b,tag:{Unbreakable:1b,display:{color:16711680}}},{id:leather_helmet,Count:1b,tag:{Unbreakable:1b,display:{color:16711680}}}]}

execute if entity @s[team=Blue] if entity @e[tag=SculptureStandB,distance=..3,scores={counter_1=..2}] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2
execute if entity @s[team=Blue] if entity @e[tag=SculptureStandB,distance=..3,scores={counter_1=..2}] run particle block minecraft:quartz_block ~ ~1 ~ 0 0 0 2 50 normal @a
execute if entity @s[team=Blue] run scoreboard players add @e[tag=SculptureStandB,distance=..3,scores={counter_1=..2}] counter_1 1
execute if entity @s[team=Blue] run data merge entity @e[tag=SculptureStandB,distance=..3,scores={counter_1=1},limit=1] {ArmorItems:[{id:leather_boots,Count:1b,tag:{Unbreakable:1b,display:{color:255}}},{id:leather_leggings,Count:1b,tag:{Unbreakable:1b,display:{color:255}}},{},{}]}
execute if entity @s[team=Blue] run data merge entity @e[tag=SculptureStandB,distance=..3,scores={counter_1=2},limit=1] {ArmorItems:[{id:leather_boots,Count:1b,tag:{Unbreakable:1b,display:{color:255}}},{id:leather_leggings,Count:1b,tag:{Unbreakable:1b,display:{color:255}}},{id:leather_chestplate,Count:1b,tag:{Unbreakable:1b,display:{color:255}}},{}]}
execute if entity @s[team=Blue] run data merge entity @e[tag=SculptureStandB,distance=..3,scores={counter_1=3},limit=1] {ArmorItems:[{id:leather_boots,Count:1b,tag:{Unbreakable:1b,display:{color:255}}},{id:leather_leggings,Count:1b,tag:{Unbreakable:1b,display:{color:255}}},{id:leather_chestplate,Count:1b,tag:{Unbreakable:1b,display:{color:255}}},{id:leather_helmet,Count:1b,tag:{Unbreakable:1b,display:{color:255}}}]}

scoreboard players reset @s counter