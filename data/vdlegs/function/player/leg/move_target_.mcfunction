scoreboard players set @s vdlegs.interval 12
execute if score @s vdlegs.leg_id matches 0 rotated ~ 0 positioned ^-4 ^ ^4 positioned ~-2 ~-100 ~-2 unless entity @s[dx=3,dy=200,dz=3] positioned ~2 ~100 ~2 run function vdlegs:player/leg/re_target
execute if score @s vdlegs.leg_id matches 1 rotated ~ 0 positioned ^4 ^ ^4 positioned ~-2 ~-100 ~-2 unless entity @s[dx=3,dy=200,dz=3] positioned ~2 ~100 ~2 run function vdlegs:player/leg/re_target
execute if score @s vdlegs.leg_id matches 2 rotated ~ 0 positioned ^-3 ^ ^ positioned ~-2 ~-100 ~-2 unless entity @s[dx=3,dy=200,dz=3] positioned ~2 ~100 ~2 run function vdlegs:player/leg/re_target
execute if score @s vdlegs.leg_id matches 3 rotated ~ 0 positioned ^3 ^ ^ positioned ~-2 ~-100 ~-2 unless entity @s[dx=3,dy=200,dz=3] positioned ~2 ~100 ~2 run function vdlegs:player/leg/re_target
execute if score @s vdlegs.leg_id matches 4 rotated ~ 0 positioned ^-2 ^ ^-2 positioned ~-2 ~-100 ~-2 unless entity @s[dx=3,dy=200,dz=3] positioned ~2 ~100 ~2 run function vdlegs:player/leg/re_target
execute if score @s vdlegs.leg_id matches 5 rotated ~ 0 positioned ^2 ^ ^-2 positioned ~-2 ~-100 ~-2 unless entity @s[dx=3,dy=200,dz=3] positioned ~2 ~100 ~2 run function vdlegs:player/leg/re_target

execute if score @s vdlegs.leg_id matches 0 rotated ~ 0 positioned ^-4 ^ ^4 if entity @s[tag=vdlegs.leg_separate] run function vdlegs:player/leg/re_target
execute if score @s vdlegs.leg_id matches 1 rotated ~ 0 positioned ^4 ^ ^4 if entity @s[tag=vdlegs.leg_separate] run function vdlegs:player/leg/re_target
execute if score @s vdlegs.leg_id matches 2 rotated ~ 0 positioned ^-3 ^ ^ if entity @s[tag=vdlegs.leg_separate] run function vdlegs:player/leg/re_target
execute if score @s vdlegs.leg_id matches 3 rotated ~ 0 positioned ^3 ^ ^ if entity @s[tag=vdlegs.leg_separate] run function vdlegs:player/leg/re_target
execute if score @s vdlegs.leg_id matches 4 rotated ~ 0 positioned ^-2 ^ ^-2 if entity @s[tag=vdlegs.leg_separate] run function vdlegs:player/leg/re_target
execute if score @s vdlegs.leg_id matches 5 rotated ~ 0 positioned ^2 ^ ^-2 if entity @s[tag=vdlegs.leg_separate] run function vdlegs:player/leg/re_target