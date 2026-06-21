execute at @s run function vdcollision_detection:detect
execute if score # vdcoldet.result matches 1 run scoreboard players set @s vdlegs.vy 0
execute if score # vdcoldet.result matches 0 run function vdlegs:player/leg/move_target_fall
scoreboard players remove @s vdlegs.interval 1
scoreboard players set #ray_hit _ 1


execute if score @s vdlegs.interval matches ..0 if score #Player vdlegs.cooltime matches ..0 run function vdlegs:player/leg/move_target_

execute if entity @s[tag=vdlegs.leg_separate] facing entity @s feet run rotate 393d0ee4-62e0-4837-8a34-c6010ad7990a ~ ~

scoreboard players operation # vdlegs.id = @s vdlegs.parent2
scoreboard players set $strength player_motion.api.launch 2000
execute if entity @s[tag=vdlegs.leg_separate] facing entity @s feet as @a[gamemode=!spectator] if score @s vdlegs.id = # vdlegs.id positioned as @s if loaded ~ ~ ~ rotated as 393d0ee4-62e0-4837-8a34-c6010ad7990a run function player_motion:api/launch_looking
tag @s remove vdlegs.leg_separate
scoreboard players add #succ _ 1
