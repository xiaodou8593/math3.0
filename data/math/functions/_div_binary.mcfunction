#math:_div_binary
# 精确计算(res*1024)//inp
# res: [-2147483647, 2147483647]
# inp: [-536870912, 536870912]

# 规约除数为正
execute if score inp int matches ..-1 run function math:div_resign

scoreboard players operation sstemp_res int = res int
scoreboard players operation sstemp_inp int = inp int

# 数值缩放
scoreboard players set sstemp_scale int 1024
scoreboard players set sstemp_div int 1
execute if score inp int matches 2097153..4194304 run scoreboard players set sstemp_div int 2
execute if score inp int matches 4194305.. run scoreboard players set sstemp_div int 16

scoreboard players operation sstemp_scale int /= sstemp_div int
scoreboard players operation inp int /= sstemp_div int

# 计算结果
scoreboard players operation sstemp int = res int
scoreboard players operation res int /= inp int
scoreboard players operation res int *= sstemp_scale int
scoreboard players operation sstemp int %= inp int
scoreboard players operation sstemp int *= sstemp_scale int
scoreboard players operation sstemp int /= inp int
scoreboard players operation res int += sstemp int

# 误差判定
scoreboard players operation sstemp_res int *= 1024 int
scoreboard players operation sstemp int = res int
scoreboard players operation sstemp int *= sstemp_inp int
scoreboard players operation sstemp int -= sstemp_res int
execute if score sstemp int >= sstemp_inp int run scoreboard players remove res int 1