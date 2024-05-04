#marker_control:entity_tick

function marker_control:data/_get

# 获取tick函数列表
data modify storage marker_control:io tick_funcs set value []
data modify storage marker_control:io tick_funcs set from storage marker_control:io result.tick_funcs
data modify storage marker_control:io tick_funcs prepend from storage marker_control:io result.tick_func

# 执行每个tick函数
execute if data storage marker_control:io tick_funcs[0] run function marker_control:entity_tick_loop