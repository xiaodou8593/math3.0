#math:list/find/cmp/key
# 比较元素的key
# 输入storage math:io input

data modify storage math:io temp_cmp set from storage math:io list[0].key
execute store success score sres int run data modify storage math:io temp_cmp set from storage math:io input
scoreboard players add sres int 1
scoreboard players operation sres int %= 2 int