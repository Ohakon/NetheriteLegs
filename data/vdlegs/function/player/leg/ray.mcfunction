function vdcollision_detection:detect
execute if score # vdcoldet.result matches 1 run function vdlegs:player/leg/ray_hit
scoreboard players remove #loops _ 1
execute if score # vdcoldet.result matches 0 if score #loops _ matches 1.. positioned ^ ^ ^0.1 run function vdlegs:player/leg/ray