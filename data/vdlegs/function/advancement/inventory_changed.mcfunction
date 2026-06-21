advancement revoke @s only vdlegs:inventory_changed

execute store result score #leggings_before _ if entity @s[tag=vdlegs.leg_player]
execute store result score #leggings_after _ if items entity @s armor.legs *[custom_data={"vditems.id":"spider_leggings"}]
execute if score #leggings_before _ matches 1 if score #leggings_after _ matches 0 run function vdlegs:player/leg/disable
execute if score #leggings_before _ matches 0 if score #leggings_after _ matches 1 run function vdlegs:player/leg/enable