#math:test/facing_tester/_new
# 生成facing_tester
# 输入执行坐标

execute unless data storage math:io input.states run data modify storage math:io input set value {states:["horizontal","vertical"],facing_rate:6,invisible:1b}

tag @e[tag=result] remove result
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["facing_tester","result"],CustomName:'{"text":"facing_tester"}'}
execute as @e[tag=result,limit=1] run function math:test/facing_tester/set

data remove storage math:io input

schedule function math:test/facing_tester/tick 1t replace