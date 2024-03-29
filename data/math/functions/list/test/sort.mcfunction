#math:list/test/sort

tellraw @a "--- list sort test ---"

data modify storage math:io list set value []
data modify storage math:io list append value {name:"alice",key:5}
data modify storage math:io list append value {name:"bob",key:5}
data modify storage math:io list append value {name:"carl",key:8}
data modify storage math:io list append value {name:"doge",key:3}
data modify storage math:io list append value {name:"ethan",key:4}
data modify storage math:io list append value {name:"france",key:4}

# 根据key的大小，大的元素排前面
data modify storage math:io sort_cmp set value "math:list/sort/cmp/key_bigger"
function math:list/_sort
tellraw @a ["list: ", {"nbt":"list","storage":"math:io"}]

# 根据key的大小，小的元素排前面
data modify storage math:io sort_cmp set value "math:list/sort/cmp/key_smaller"
function math:list/_sort
tellraw @a ["list: ", {"nbt":"list","storage":"math:io"}]