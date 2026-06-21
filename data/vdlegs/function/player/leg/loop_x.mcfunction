scoreboard players set #z _ 5
function vdlegs:player/leg/loop_z
scoreboard players remove #x _ 1
execute if score #x _ matches 1.. positioned ~1 ~ ~ run function vdlegs:player/leg/loop_x