tp @s ~ ~ ~
rotate @s facing ^ ^ ^-1
scoreboard players operation # vdlegs.id = @s vdlegs.parent
scoreboard players set # _ 0
execute as @e[tag=vdlegs.legs,distance=..4] if score @s vdlegs.id = # vdlegs.id facing entity @s feet positioned ^ ^ ^2 run function vdlegs:entity/leg/ik_reverse
execute if score # _ matches 0 as @e[tag=vdlegs.legs] if score @s vdlegs.id = # vdlegs.id facing entity @s feet positioned ^ ^ ^2 run function vdlegs:entity/leg/ik_reverse
scoreboard players set # _ 1
