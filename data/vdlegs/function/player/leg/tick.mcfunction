effect clear @s levitation
effect give @s slow_falling infinite 0 true
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"type_specific":{type:"player",input:{jump:true}}}} run effect give @s levitation infinite 5 true
attribute @s gravity base set 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"type_specific":{type:"player",input:{sneak:true}}}} run attribute @s gravity base set 0.08

scoreboard players operation # vdlegs.parent2 = @s vdlegs.id
scoreboard players operation #Player vdlegs.cooltime = @s vdlegs.cooltime
scoreboard players set # _ 0
execute as @e[tag=vdlegs.leg_root,distance=..3] if score @s vdlegs.parent2 = # vdlegs.parent2 store success score # _ run tp @s ~ ~0.5 ~
execute if score # _ matches 0 as @e[tag=vdlegs.leg_root] if score @s vdlegs.parent2 = # vdlegs.parent2 store success score # _ run tp @s ~ ~0.5 ~
scoreboard players set #succ _ 0
execute as @e[tag=vdlegs.leg_target_target,distance=..32] if score @s vdlegs.parent2 = # vdlegs.parent2 run function vdlegs:player/leg/move_target
execute if score #succ _ matches ..5 as @e[tag=vdlegs.leg_target_target] if score @s vdlegs.parent2 = # vdlegs.parent2 run function vdlegs:player/leg/move_target
scoreboard players operation @s vdlegs.cooltime = #Player vdlegs.cooltime
scoreboard players remove @s vdlegs.cooltime 1