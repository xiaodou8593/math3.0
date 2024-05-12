#math:test/facing_tester/main
# math:test/facing_tester/tick调用

function marker_control:data/_get

data modify storage math:io input set from storage marker_control:io result.cur_state
function math:string/_from_raw
data modify storage math:io input set value []
data modify storage math:io input append from storage math:class string_matchers.num
function math:string/_find
execute if score res int matches 1.. run function math:test/facing_tester/num_state

function math:test/facing_tester/run_state with storage marker_control:io result
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

execute store result score temp int run data get storage marker_control:io result.facing_rate
scoreboard players operation @s timer += temp int
execute if score @s timer matches 360.. run function math:test/facing_tester/next_state