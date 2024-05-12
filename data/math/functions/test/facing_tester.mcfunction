#math:test/facing_tester
# 聊天栏调用

function math:test/_coords
data modify storage math:io input set value {states:["horizontal"],facing_rate:1,invisible:1b}
execute at @e[tag=test_coord,limit=1] run function math:test/facing_tester/_new