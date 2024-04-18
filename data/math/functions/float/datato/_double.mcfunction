#math:float/datato/_double
# nbt的double转浮点数
# 输入storage math:io double

function math:_get_double
scoreboard players operation float_sign int = sign int
scoreboard players operation float_int0 int = digits int
scoreboard players operation float_int1 int = digits int
scoreboard players operation float_int0 int /= 10000 int
scoreboard players operation float_int1 int %= 10000 int
scoreboard players operation float_exp int = exp int