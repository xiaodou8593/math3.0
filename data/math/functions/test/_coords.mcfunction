#math:test/_coords
# 刷新测试点坐标

data modify storage math:io test_coords set value [\
	[0.0d,0.0d,0.0d],\
	[7.5d,2.5d,0.0d],\
	[7.0d,0.0d,-3.0d],\
	[-7.0d,0.0d,-3.0d],\
	[-5.5d,0.0d,4.5d],\
	[3.0d,-1.5d,-3.0d],\
	[-8.5d,-1.0,3.5d],\
	[4.5d,0.0d,5.5d],\
]

kill @e[tag=test_coord]
summon marker 0 0 0 {Tags:["test_coord"],CustomName:'{"text":"test_coord"}'}

execute store result score x int run data get storage math:io test_coords[0][0] 10000
execute store result score y int run data get storage math:io test_coords[0][1] 10000
execute store result score z int run data get storage math:io test_coords[0][2] 10000
scoreboard players operation x int += test_x int
scoreboard players operation y int += test_y int
scoreboard players operation z int += test_z int
execute as @e[tag=test_coord,limit=1] run function math:_topos