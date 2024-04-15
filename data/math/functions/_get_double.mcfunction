#math:_get_double
# 获取double符号,有效数字,数量级
# 输入storage math:io double
# 输出{<sign,int>, <digits,int> ,<exp,int>}

data modify storage math:io char set string storage math:io double 0 1
scoreboard players set sign int 1
execute if data storage math:io {char:"-"} run scoreboard players set sign int -1

execute if score sign int matches 1 run function math:get_double/pos
execute if score sign int matches -1 run function math:get_double/neg

execute if score digits int matches 0 run function math:get_double/zero