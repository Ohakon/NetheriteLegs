tp @s ~ ~ ~
scoreboard players operation # vdlegs.id = @s vdlegs.child
scoreboard players set # _ 0
execute as @e[tag=vdlegs.legs,distance=..4] if score @s[tag=!vdlegs.leg_target] vdlegs.id = # vdlegs.id facing entity @s feet positioned ^ ^ ^2 run function vdlegs:entity/leg/ik
execute if score # _ matches 0 as @e[tag=vdlegs.legs] if score @s[tag=!vdlegs.leg_target] vdlegs.id = # vdlegs.id facing entity @s feet positioned ^ ^ ^2 run function vdlegs:entity/leg/ik
scoreboard players set # _ 1
