#math:test/facing_tester/set

item replace entity @s armor.head with skeleton_skull

function marker_control:data/_get
data modify storage marker_control:io result.states set from storage math:io input.states
data modify storage marker_control:io result.states prepend value ""
data modify storage marker_control:io result.facing_rate set from storage math:io input.facing_rate
function marker_control:data/_store

data modify entity @s Pose set value {Head:[0.0f,0.0f,0.000001f]}
execute if data storage math:io input{invisible:1b} run data modify entity @s Invisible set value 1b

function math:test/facing_tester/next_state