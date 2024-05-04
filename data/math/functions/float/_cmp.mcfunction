#math:float/_cmp
# 比较浮点数大小
# 输入比较数ifloat
# 输出比较大小结果到<res,int>
# 输出绝对值比较大小结果到<sres,int>

scoreboard players set sres int 0
execute if score ifloat_exp int > float_exp int run scoreboard players set sres int 1
execute if score ifloat_exp int < float_exp int run scoreboard players set sres int -1
execute if score sres int matches 0 if score ifloat_int0 int > float_int0 int run scoreboard players set sres int 1
execute if score sres int matches 0 if score ifloat_int0 int < float_int0 int run scoreboard players set sres int -1
execute if score sres int matches 0 if score ifloat_int1 int > float_int1 int run scoreboard players set sres int 1
execute if score sres int matches 0 if score ifloat_int1 int < float_int1 int run scoreboard players set sres int -1

scoreboard players operation res int = sres int
execute if score ifloat_sign int = float_sign int if score float_sign int matches -1 run scoreboard players operation res int *= -1 int
execute if score ifloat_sign int > float_sign int run scoreboard players set res int 1
execute if score ifloat_sign int < float_sign int run scoreboard players set res int -1