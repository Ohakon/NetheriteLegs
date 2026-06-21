scoreboard players remove @s vdlegs.vy 80
data remove storage _ macro.vy
execute store result storage _ macro.vy double 0.001 run scoreboard players get @s vdlegs.vy
execute at @s run function vdlegs:player/leg/move_target_tp.m with storage _ macro