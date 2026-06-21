scoreboard players set #loops _ 160
execute positioned ~ ~8 ~ run function vdcollision_detection:detect
execute rotated 0 90 if score #ray_hit _ matches 0 if score # vdcoldet.result matches 0 positioned ~ ~8 ~ positioned ^ ^ ^1 run function vdlegs:player/leg/ray
