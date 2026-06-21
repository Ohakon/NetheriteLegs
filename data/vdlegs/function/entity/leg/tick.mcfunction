scoreboard players operation # vdlegs.id = @s vdlegs.parent
scoreboard players set # _ 0
execute as @e[tag=vdlegs.legs,distance=..10] if score @s vdlegs.id = # vdlegs.id facing entity @s feet store success score # _ run rotate 393d0ee4-62e0-4837-8a34-c6010ad7990a ~ ~
execute if score # _ matches 0 as @e[tag=vdlegs.legs] if score @s vdlegs.id = # vdlegs.id facing entity @s feet store success score # _ run rotate 393d0ee4-62e0-4837-8a34-c6010ad7990a ~ ~
execute rotated as 393d0ee4-62e0-4837-8a34-c6010ad7990a rotated ~ -45 run function vdlegs:entity/leg/ik_init

scoreboard players operation # vdlegs.id = @s vdlegs.parent
scoreboard players set # _ 0
execute as @e[tag=vdlegs.legs,distance=..10] if score @s vdlegs.id = # vdlegs.id at @s run function vdlegs:entity/leg/ik_reverse
execute if score # _ matches 0 as @e[tag=vdlegs.legs] if score @s vdlegs.id = # vdlegs.id at @s run function vdlegs:entity/leg/ik_reverse
function vdlegs:entity/leg/ik
scoreboard players operation # vdlegs.id = @s vdlegs.parent
scoreboard players set # _ 0
execute as @e[tag=vdlegs.legs,distance=..10] if score @s vdlegs.id = # vdlegs.id at @s run function vdlegs:entity/leg/ik_reverse
execute if score # _ matches 0 as @e[tag=vdlegs.legs] if score @s vdlegs.id = # vdlegs.id at @s run function vdlegs:entity/leg/ik_reverse

scoreboard players operation # vdlegs.id = @s vdlegs.child
scoreboard players set # _ 0
scoreboard players set #_ _ 0
execute as @e[tag=vdlegs.legs,distance=3.05..10] if score @s vdlegs.id = # vdlegs.id store result score #_ _ run scoreboard players set # _ 1
execute if score #_ _ matches 0 as @e[tag=vdlegs.legs,distance=3.05..] if score @s vdlegs.id = # vdlegs.id store result score #_ _ run scoreboard players set # _ 1
scoreboard players operation # vdlegs.id = @s vdlegs.parent
scoreboard players set #_ _ 0
execute as @e[tag=vdlegs.legs,distance=..10] if score @s vdlegs.id = # vdlegs.id store success score #_ _ run scoreboard players operation # vdlegs.id = @s vdlegs.child
execute if score #_ _ matches 0 as @e[tag=vdlegs.legs] if score @s vdlegs.id = # vdlegs.id run scoreboard players operation # vdlegs.id = @s vdlegs.child
scoreboard players set #_ _ 0
execute if score # _ matches 1 as @e[tag=vdlegs.legs,distance=..10] if score @s vdlegs.id = # vdlegs.id store result score #_ _ run tag @s add vdlegs.leg_separate
execute if score # _ matches 1 if score #_ _ matches 0 as @e[tag=vdlegs.legs] if score @s vdlegs.id = # vdlegs.id store result score #_ _ run tag @s add vdlegs.leg_separate
function vdlegs:entity/leg/ik_rot
