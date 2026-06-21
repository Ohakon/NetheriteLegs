#> vdcollision_detection:detect
# 実行座標がブロックに埋まっているかどうかを調べる
#
# return: # vdcoldet.result (0:false,1:true)

execute store result score # vdcoldet.result if block ~ ~ ~ #vdcollision_detection:2_3
scoreboard players set #_ vdcoldet.result 16
execute unless block ~ ~ ~ #vdcollision_detection:0_1 unless block ~ ~ ~ #vdcollision_detection:2_3 if loaded ~ ~ ~ summon marker run function vdcollision_detection:_
