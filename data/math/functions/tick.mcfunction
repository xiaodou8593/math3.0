#math:tick

# 更新uaec
scoreboard players add upd_aec int 1
execute as @e[tag=upd_aec,type=minecraft:area_effect_cloud] store result entity @s Air short 1 run scoreboard players operation upd_aec int %= 10 int

# 刷新掉落物时间
data modify entity 0-0-0-0-1 Age set value 0

# 继续主循环
schedule function math:tick 1t replace