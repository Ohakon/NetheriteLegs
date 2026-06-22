execute at @e[type=player] if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I; 960302820, 1658865719, -1976252927, 181901578]}
execute as @a[tag=!vdlegs.spawned] run function vdlegs:entity/spawn
execute as @e[tag=vdlegs.leg_player] at @s run function vdlegs:player/leg/tick
execute as @e[type=marker,tag=vdlegs.leg_target] at @s run function vdlegs:entity/leg/target_tick
execute as @e[type=block_display,tag=vdlegs.leg_root] at @s run function vdlegs:entity/leg/tick
kill 393d0ee4-62e0-4837-8a34-c6010ad7990a
