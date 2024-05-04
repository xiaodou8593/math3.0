#marker_control:entity_tick_loop

# 执行tick函数
data modify storage marker_control:io tick_func set from storage marker_control:io tick_funcs[0]
function marker_control:run_tick_func with storage marker_control:io {}

data remove storage marker_control:io tick_funcs[0]
execute if data storage marker_control:io tick_funcs[0] run function marker_control:entity_tick_loop