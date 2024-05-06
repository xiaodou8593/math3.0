#marker_control:_init_dim
# 输入执行维度，初始化

# 加载区块
forceload add -1 -1 1 1

# 全局实体
summon marker 0 0 0 {Tags:["math_marker"],UUID:[I;0,0,0,0],CustomName:'"math_marker"'}
$summon item 0 $(height) 0 {Tags:["uuid_marker","upd_item"],UUID:[I;0,0,0,1],CustomName:'"uuid_marker"',NoGravity:1b,Item:{id:"minecraft:glass",Count:1b}}