function vdlegs:player/leg/loop
scoreboard players remove #z _ 1
execute if score #z _ matches 1.. positioned ~ ~ ~1 run function vdlegs:player/leg/loop_z