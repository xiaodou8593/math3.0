#marker_control:_init
# 在主世界初始化

# 加载区块
forceload add -1 -1 1 1

# 全局实体
kill 0-0-0-0-0
summon marker 0 0 0 {Tags:["math_marker"],UUID:[I;0,0,0,0],CustomName:'"math_marker"'}
kill 0-0-0-0-1
summon item 0 -67 0 {Tags:["uuid_marker","upd_item"],UUID:[I;0,0,0,1],CustomName:'"uuid_marker"',NoGravity:1b,Item:{id:"minecraft:glass",Count:1b}}

# 主循环
schedule function marker_control:tick 1t replace

# 建立记分板
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add int dummy
scoreboard objectives add timer dummy
scoreboard objectives add killtime dummy
scoreboard objectives add customdata_type dummy

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