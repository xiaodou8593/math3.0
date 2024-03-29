#math:list/_sort
# 对列表运行排序算法
# 输入排序规则storage math:io sort_cmp

data modify storage math:io rec prepend value {}

data modify storage math:io rec[0].input set from storage math:io list
function math:list/sort/rec0
data modify storage math:io list set from storage math:io rec[0].result

data remove storage math:io rec[0]

scoreboard players set list_phi int 0