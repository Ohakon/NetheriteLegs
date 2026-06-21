
scoreboard players set #flyable _ 0

scoreboard players operation # vdlegs.parent2 = @s vdlegs.id
scoreboard players operation #Player vdlegs.cooltime = @s vdlegs.cooltime
scoreboard players set # _ 0
execute as @e[tag=vdlegs.leg_root,distance=..3] if score @s vdlegs.parent2 = # vdlegs.parent2 store success score # _ run tp @s ~ ~0.5 ~
execute if score # _ matches 0 as @e[tag=vdlegs.leg_root] if score @s vdlegs.parent2 = # vdlegs.parent2 store success score # _ run tp @s ~ ~0.5 ~
scoreboard players set #succ _ 0
execute as @e[tag=vdlegs.leg_target_target,distance=..32] if score @s vdlegs.parent2 = # vdlegs.parent2 run function vdlegs:player/leg/move_target
execute if score #succ _ matches ..5 as @e[tag=vdlegs.leg_target_target] if score @s vdlegs.parent2 = # vdlegs.parent2 run function vdlegs:player/leg/move_target
scoreboard players set #succ _ 0
execute as @e[tag=vdlegs.leg_target,distance=..32] if score @s vdlegs.parent2 = # vdlegs.parent2 at @s run function vdlegs:player/leg/target_tick
execute if score #succ _ matches ..5 if score #flyable _ matches 0 as @e[tag=vdlegs.leg_target] if score @s vdlegs.parent2 = # vdlegs.parent2 at @s run function vdlegs:player/leg/target_tick
scoreboard players operation @s vdlegs.cooltime = #Player vdlegs.cooltime
scoreboard players remove @s vdlegs.cooltime 1

execute if score #flyable _ matches 1 run function vdlegs:player/leg/fly
execute if score #flyable _ matches 0 run function vdlegs:player/leg/stop_fly
