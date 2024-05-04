#marker_control:data/get_type

scoreboard players set @s customdata_type 0
execute if data entity @s ArmorItems[3].Count run scoreboard players set @s customdata_type 1
execute if data entity @s Item.Count run scoreboard players set @s customdata_type 2
execute if data entity @s item.Count run scoreboard players set @s customdata_type 3
execute if data entity @s ArmorItems[3].count run scoreboard players set @s customdata_type 4
execute if data entity @s Item.count run scoreboard players set @s customdata_type 5
execute if data entity @s item.count run scoreboard players set @s customdata_type 6
execute if data entity @s data run scoreboard players set @s customdata_type 7

execute if score @s customdata_type matches 1 unless data entity @s ArmorItems[3].tag run data modify entity @s ArmorItems[3].tag set value {}
execute if score @s customdata_type matches 2 unless data entity @s Item.tag run data modify entity @s ArmorItems[3].tag set value {}
execute if score @s customdata_type matches 3 unless data entity @s item.tag run data modify entity @s ArmorItems[3].tag set value {}
execute if score @s customdata_type matches 4 unless data entity @s ArmorItems[3].components.minecraft:custom_data run data modify entity @s ArmorItems[3].components.minecraft:custom_data set value {}
execute if score @s customdata_type matches 5 unless data entity @s Item.components.minecraft:custom_data run data modify entity @s Item.components.minecraft:custom_data set value {}
execute if score @s customdata_type matches 6 unless data entity @s item.components.minecraft:custom_data run data modify entity @s item.components.minecraft:custom_data set value {}