tag @s remove vdlegs.leg_player

scoreboard players operation # vdlegs.parent2 = @s vdlegs.id
function vdlegs:player/leg/kill
effect clear @s levitation
effect clear @s slow_falling
attribute @s gravity base set 0.08