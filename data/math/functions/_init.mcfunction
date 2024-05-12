#math:_init
# 初始化数学库

# 基础设置
execute in minecraft:overworld run function marker_control:_init
scoreboard players set 1024 int 1024
scoreboard players set 20000 int 20000

# 函数调用栈
data modify storage math:io rec set value [{}]

#临时对象初始化
data modify storage math:io rotation set value [0.0f,0.0f]
data modify storage math:io xyz set value [0.0d,0.0d,0.0d]
data modify storage math:io xyzw set value [0.0f,0.0f,0.0f,0.0f]