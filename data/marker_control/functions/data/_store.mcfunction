#marker_control:data/_store
# 储存实体NBT空间
# 输入storage marker_control:io result

execute if score @s customdata_type matches 1 run data modify entity @s ArmorItems[3].tag set from storage marker_control:io result
execute if score @s customdata_type matches 2 run data modify entity @s Item.tag set from storage marker_control:io result
execute if score @s customdata_type matches 3 run data modify entity @s item.tag set from storage marker_control:io result
execute if score @s customdata_type matches 4 run data modify entity @s ArmorItems[3].components.minecraft:custom_data set from storage marker_control:io result
execute if score @s customdata_type matches 5 run data modify entity @s Item.components.minecraft:custom_data set from storage marker_control:io result
execute if score @s customdata_type matches 6 run data modify entity @s item.components.minecraft:custom_data set from storage marker_control:io result
execute if score @s customdata_type matches 7 run data modify entity @s data set from storage marker_control:io result