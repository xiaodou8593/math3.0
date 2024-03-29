#math:list/_insert
# 向列表插入元素
# 输入storage math:io input

data modify storage math:io list prepend from storage math:io input
scoreboard players add list_n int 1