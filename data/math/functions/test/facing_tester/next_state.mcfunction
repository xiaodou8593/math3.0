#math:test/facing_tester/next_state
# math:test/facing_tester/main调用

function marker_control:data/_get
data remove storage marker_control:io result.states[0]
data modify storage marker_control:io result.cur_state set value ""
data modify storage marker_control:io result.cur_state set from storage marker_control:io result.states[0]
scoreboard players set @s timer 0
function marker_control:data/_store

execute if data storage marker_control:io result{cur_state:""} run kill @s