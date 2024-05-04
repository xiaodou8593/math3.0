#marker_control:_del
# 执行回调函数并删除实体

function marker_control:data/_get

# 获取del函数列表
data modify storage marker_control:io tick_funcs set value []
data modify storage marker_control:io tick_funcs set from storage marker_control:io result.del_funcs
data modify storage marker_control:io tick_funcs prepend from storage marker_control:io result.del_func

# 执行每个del函数
execute if data storage marker_control:io tick_funcs[0] run function marker_control:entity_tick_loop

kill @s