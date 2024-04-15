#math:float/todata/_float
# 浮点数转nbt的float
# 输出storage math:io float

scoreboard players operation sstemp0 int = float_int0 int
scoreboard players operation sstemp0 int *= 10000 int
scoreboard players operation sstemp0 int += float_int1 int
scoreboard players operation sstemp0 int *= float_sign int

execute if score float_exp int matches ..-4 run function math:float/todata/search/-7_-4_float
execute if score float_exp int matches -3..0 run function math:float/todata/search/-3_0_float
execute if score float_exp int matches 1..4 run function math:float/todata/search/1_4_float
execute if score float_exp int matches 5.. run function math:float/todata/search/5_8_float