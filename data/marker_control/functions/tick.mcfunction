#marker_control:tick

# 更新uaec
scoreboard players add upd_aec int 1
execute as @e[tag=upd_aec,type=minecraft:area_effect_cloud] store result entity @s Air short 1 run scoreboard players operation upd_aec int %= 10 int

# 刷新掉落物时间
execute as @e[tag=upd_item,type=minecraft:item] run data modify entity @s Age set value 0

# 刷新掉落方块时间
#execute as @e[tag=upd_block,type=minecraft:falling_block] run data modify entity @s Time set value 100

# 清除时间
scoreboard players remove @e[scores={killtime=1..}] killtime 1
execute as @e[scores={killtime=..0},tag=entity_todel] run function marker_control:_del
kill @e[scores={killtime=..0}]

# 实体循环
execute as @e[tag=entity_ticked] run function marker_control:entity_tick

# 继续主循环
schedule function marker_control:tick 1t replace