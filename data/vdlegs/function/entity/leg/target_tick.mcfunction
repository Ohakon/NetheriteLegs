scoreboard players set # _ 0
scoreboard players operation # vdlegs.id = @s vdlegs.child
execute as @e[tag=vdlegs.leg_target_target,distance=..1,type=marker] if score @s vdlegs.id = # vdlegs.id store result score # _ if loaded ~ ~ ~ run tp 393d0ee4-62e0-4837-8a34-c6010ad7990a @s
execute if score # _ matches 0 as @e[tag=vdlegs.leg_target_target,type=marker] if score @s vdlegs.id = # vdlegs.id store result score # _ if loaded ~ ~ ~ run tp 393d0ee4-62e0-4837-8a34-c6010ad7990a @s
execute if score # _ matches 1 positioned as 393d0ee4-62e0-4837-8a34-c6010ad7990a if entity @s[distance=..1] run function vdlegs:entity/leg/tp
execute if score # _ matches 1 positioned as 393d0ee4-62e0-4837-8a34-c6010ad7990a if entity @s[distance=1..] positioned as @s facing entity 393d0ee4-62e0-4837-8a34-c6010ad7990a feet positioned ~ ~0.8 ~ run function vdlegs:entity/leg/approach

scoreboard players operation # vdlegs.id = @s vdlegs.parent2
scoreboard players set # _ 0
execute as @e[type=player] if score @s vdlegs.id = # vdlegs.id run scoreboard players set # _ 1
scoreboard players operation # vdlegs.parent2 = @s vdlegs.parent2
execute if score # _ matches 0 run function vdlegs:player/leg/kill