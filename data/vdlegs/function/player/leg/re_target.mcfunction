scoreboard players set #loops2 _ 20
scoreboard players set #ray_hit _ 0

scoreboard players set #loops _ 160
execute positioned ~ ~8 ~ run function vdcollision_detection:detect
execute rotated 0 90 if score # vdcoldet.result matches 0 positioned ~ ~8 ~ positioned ^ ^ ^1 run function vdlegs:player/leg/ray

scoreboard players set #x _ 5
execute positioned ~-2 ~ ~-2 run function vdlegs:player/leg/loop_x
scoreboard players set #loops _ 160
execute positioned ~ ~8 ~ run function vdcollision_detection:detect
execute rotated 0 90 if score # vdcoldet.result matches 0 positioned ~ ~8 ~ positioned ^ ^ ^1 run function vdlegs:player/leg/ray


scoreboard players set #loops _ 160
execute if score #ray_hit _ matches 0 positioned ~ ~ ~ run function vdcollision_detection:detect
execute if score #ray_hit _ matches 0 if score # vdcoldet.result matches 0 positioned ~ ~ ~ rotated 0 -90 positioned ^ ^ ^1 run function vdlegs:player/leg/ray


