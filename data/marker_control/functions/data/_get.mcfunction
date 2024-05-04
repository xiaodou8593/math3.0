#marker_control:data/_get
# 获取实体NBT空间
# 输出storage marker_control:io result

execute unless score @s customdata_type matches 1.. run function marker_control:data/get_type

execute if score @s customdata_type matches 1 run data modify storage marker_control:io result set from entity @s ArmorItems[3].tag
execute if score @s customdata_type matches 2 run data modify storage marker_control:io result set from entity @s Item.tag
execute if score @s customdata_type matches 3 run data modify storage marker_control:io result set from entity @s item.tag
execute if score @s customdata_type matches 4 run data modify storage marker_control:io result set from entity @s ArmorItems[3].components.minecraft:custom_data
execute if score @s customdata_type matches 5 run data modify storage marker_control:io result set from entity @s Item.components.minecraft:custom_data
execute if score @s customdata_type matches 6 run data modify storage marker_control:io result set from entity @s item.components.minecraft:custom_data
execute if score @s customdata_type matches 7 run data modify storage marker_control:io result set from entity @s data