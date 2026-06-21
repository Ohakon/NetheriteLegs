tag @s remove vdlegs.leg_player

scoreboard players operation # vdlegs.parent2 = @s vdlegs.id
execute as @e[tag=vdlegs.legs] if score @s vdlegs.parent2 = # vdlegs.parent2 run kill @s
effect clear @s levitation
effect clear @s slow_falling
attribute @s gravity base set 0.08