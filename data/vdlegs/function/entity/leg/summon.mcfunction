summon block_display ~ ~ ~ {Tags:[vdlegs.leg_root,vdlegs.legs,init0,init],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,0f],scale:[0.3f,0.3f,2f]},block_state:{Name:"minecraft:netherite_block"}}
summon block_display ~ ~ ~ {Tags:[vdlegs.leg,vdlegs.legs,init1,init],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,0f],scale:[0.3f,0.3f,2f]},block_state:{Name:"minecraft:netherite_block"}}
summon block_display ~ ~ ~ {Tags:[vdlegs.leg,vdlegs.legs,init2,init],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,0f],scale:[0.2f,0.2f,2f]},block_state:{Name:"minecraft:netherite_block"}}
summon block_display ~ ~ ~ {Tags:[vdlegs.leg,vdlegs.legs,init3,init],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,0f],scale:[0.2f,0.2f,2f]},block_state:{Name:"minecraft:netherite_block"}}
summon block_display ~ ~ ~ {Tags:[vdlegs.leg,vdlegs.legs,init4,init],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,0f],scale:[0.1f,0.1f,2f]},block_state:{Name:"minecraft:netherite_block"}}
summon block_display ~ ~ ~ {Tags:[vdlegs.leg_tip,vdlegs.legs,init5,init],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.025f,-0.025f,0f],scale:[0.05f,0.05f,2f]},block_state:{Name:"minecraft:netherite_block"}}
summon marker ~ ~ ~ {Tags:[vdlegs.leg_target,vdlegs.legs,init-1,init]}
summon marker ~ ~ ~ {Tags:[vdlegs.leg_target_target,vdlegs.legs,init-2,init]}
execute as @e[tag=init,distance=..0.01] run function vdlegs:entity/spawn
scoreboard players operation @e[tag=init0,distance=..0.01] vdlegs.child = @e[tag=init1,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init1,distance=..0.01] vdlegs.child = @e[tag=init2,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init2,distance=..0.01] vdlegs.child = @e[tag=init3,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init3,distance=..0.01] vdlegs.child = @e[tag=init4,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init4,distance=..0.01] vdlegs.child = @e[tag=init5,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init5,distance=..0.01] vdlegs.child = @e[tag=init-1,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init-1,distance=..0.01] vdlegs.child = @e[tag=init-2,distance=..0.01] vdlegs.id

scoreboard players operation @e[tag=init2,distance=..0.01] vdlegs.parent = @e[tag=init1,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init3,distance=..0.01] vdlegs.parent = @e[tag=init2,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init4,distance=..0.01] vdlegs.parent = @e[tag=init3,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init5,distance=..0.01] vdlegs.parent = @e[tag=init4,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init-1,distance=..0.01] vdlegs.parent = @e[tag=init5,distance=..0.01] vdlegs.id
scoreboard players operation @e[tag=init0,distance=..0.01] vdlegs.parent = @e[tag=init-1,distance=..0.01] vdlegs.id

scoreboard players operation @e[tag=init-2,distance=..0.01] vdlegs.parent2 = @s vdlegs.id
scoreboard players operation @e[tag=init-2,distance=..0.01] vdlegs.leg_id = # vdlegs.leg_id
scoreboard players operation @e[tag=init-1,distance=..0.01] vdlegs.parent2 = @s vdlegs.id
scoreboard players operation @e[tag=init0,distance=..0.01] vdlegs.parent2 = @s vdlegs.id
scoreboard players operation @e[tag=init1,distance=..0.01] vdlegs.parent2 = @s vdlegs.id
scoreboard players operation @e[tag=init2,distance=..0.01] vdlegs.parent2 = @s vdlegs.id
scoreboard players operation @e[tag=init3,distance=..0.01] vdlegs.parent2 = @s vdlegs.id
scoreboard players operation @e[tag=init4,distance=..0.01] vdlegs.parent2 = @s vdlegs.id
scoreboard players operation @e[tag=init5,distance=..0.01] vdlegs.parent2 = @s vdlegs.id

tag @e[tag=init,distance=..0.01] remove init0
tag @e[tag=init,distance=..0.01] remove init-2
tag @e[tag=init,distance=..0.01] remove init-1
tag @e[tag=init,distance=..0.01] remove init1
tag @e[tag=init,distance=..0.01] remove init2
tag @e[tag=init,distance=..0.01] remove init3
tag @e[tag=init,distance=..0.01] remove init4
tag @e[tag=init,distance=..0.01] remove init5
tag @e[tag=init,distance=..0.01] remove init
