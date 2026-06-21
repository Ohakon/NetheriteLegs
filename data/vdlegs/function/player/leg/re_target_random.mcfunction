scoreboard players set #loops _ 160

execute store result entity 393d0ee4-62e0-4837-8a34-c6010ad7990a Rotation[0] float 1 run random value -180..179
execute store result entity 393d0ee4-62e0-4837-8a34-c6010ad7990a Rotation[1] float 1 run random value -90..90
execute rotated as 393d0ee4-62e0-4837-8a34-c6010ad7990a positioned ^ ^ ^1 run function vdlegs:player/leg/ray
scoreboard players remove #loops2 _ 1
execute if score #loops2 _ matches 1.. if score #ray_hit _ matches 0 run function vdlegs:player/leg/re_target_random