execute store result score # vdcoldet.x run data get entity @s Pos[0] 16
execute store result score # vdcoldet.y run data get entity @s Pos[1] 16
execute store result score # vdcoldet.z run data get entity @s Pos[2] 16
scoreboard players operation # vdcoldet.x %= #_ vdcoldet.result
scoreboard players operation # vdcoldet.y %= #_ vdcoldet.result
scoreboard players operation # vdcoldet.z %= #_ vdcoldet.result
function vdcollision_detection:0_70
kill @s
