#math:_init
# 初始化数学库

# 设置全局记分板
scoreboard objectives add int dummy

# 主世界的初始化操作
execute in minecraft:overworld run function math:init_overworld

# 函数调用栈
data modify storage math:io rec set value [{}]

#临时对象初始化
data modify storage math:io rotation set value [0.0f,0.0f]
data modify storage math:io xyz set value [0.0d,0.0d,0.0d]

# 实体池初始化
function math:marker_pool/_clear
scoreboard players set marker_pool_vol int 16

# 空间初始化
function math:space/init

# 设置常量
scoreboard players set -10000 int -10000
scoreboard players set -1000 int -1000
scoreboard players set -2 int -2
scoreboard players set -1 int -1
scoreboard players set 0 int 0
scoreboard players set 1 int 1
scoreboard players set 2 int 2
scoreboard players set 3 int 3
scoreboard players set 4 int 4
scoreboard players set 5 int 5
scoreboard players set 6 int 6
scoreboard players set 7 int 7
scoreboard players set 8 int 8
scoreboard players set 9 int 9
scoreboard players set 10 int 10
scoreboard players set 16 int 16
scoreboard players set 25 int 25
scoreboard players set 40 int 40
scoreboard players set 50 int 50
scoreboard players set 100 int 100
scoreboard players set 119 int 119
scoreboard players set 500 int 500
scoreboard players set 1000 int 1000
scoreboard players set 1745 int 1745
scoreboard players set 2550 int 2550
scoreboard players set 4214 int 4214
scoreboard players set 4750 int 4750
scoreboard players set 5000 int 5000
scoreboard players set 5100 int 5100
scoreboard players set 5202 int 5202
scoreboard players set 10000 int 10000
scoreboard players set 12500 int 12500
scoreboard players set 24703 int 24703
scoreboard players set 50000 int 50000
scoreboard players set 79249 int 79249
scoreboard players set 50436 int 50436
scoreboard players set 100000 int 100000
scoreboard players set 1000000 int 1000000
scoreboard players set 3600000 int 3600000
scoreboard players set 10000000 int 10000000
scoreboard players set 100000000 int 100000000
scoreboard players set 1000000000 int 1000000000
scoreboard players set 1103515245 int 1103515245

# 主循环
schedule function math:tick 1t replace