scoreboard players operation # vdlegs.id = @s vdlegs.child
scoreboard players set # _ 0
execute as @e[tag=vdlegs.legs,distance=..4] if score @s vdlegs.id = # vdlegs.id facing entity @s feet store success score # _ run rotate 393d0ee4-62e0-4837-8a34-c6010ad7990a ~ ~
execute if score # _ matches 0 as @e[tag=vdlegs.legs] if score @s vdlegs.id = # vdlegs.id facing entity @s feet run rotate 393d0ee4-62e0-4837-8a34-c6010ad7990a ~ ~
execute rotated as 393d0ee4-62e0-4837-8a34-c6010ad7990a run rotate @s ~ ~
scoreboard players set # _ 0
execute as @e[tag=vdlegs.legs,distance=..4] if score @s vdlegs.id = # vdlegs.id at @s run function vdlegs:entity/leg/ik_rot
execute if score # _ matches 0 as @e[tag=vdlegs.legs] if score @s vdlegs.id = # vdlegs.id at @s run function vdlegs:entity/leg/ik_rot
scoreboard players set # _ 1
