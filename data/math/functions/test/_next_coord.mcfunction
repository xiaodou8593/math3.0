#math:test/_next_coord
# 下一个测试点坐标

data modify storage math:io test_coords append from storage math:io test_coords[0]
data remove storage math:io test_coords[0]

execute store result score x int run data get storage math:io test_coords[0][0] 10000
execute store result score y int run data get storage math:io test_coords[0][1] 10000
execute store result score z int run data get storage math:io test_coords[0][2] 10000
scoreboard players operation x int += test_x int
scoreboard players operation y int += test_y int
scoreboard players operation z int += test_z int
execute as @e[tag=test_coord,limit=1] run function math:_topos