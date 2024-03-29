#math:_atan2
# 计算方位角，正余弦值不必是单位化的
# 输入{<cos,int>, <sin,int>}
# 输出<theta,int>
# 需要以世界实体为执行者

execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get cos int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get sin int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ~ ~ ~ ~ ~
execute store result score theta int run data get entity @s Rotation[0] -10000