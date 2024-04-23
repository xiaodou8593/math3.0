#math:_4div_align_pos
# 精确计算(res*10000)//inp
# res: [-214748364, 214748364]
# inp: [-2147483647, 2147483647]

scoreboard players operation res int *= 10 int
scoreboard players set sstemp0 int 1000
scoreboard players set sstemp1 int 1
execute if score inp int matches 2147484..8589935 run scoreboard players set sstemp1 int 2
execute if score inp int matches 8589936.. run scoreboard players set sstemp1 int 25

scoreboard players operation sstemp_res int = res int
scoreboard players operation sstemp_inp int = inp int

scoreboard players operation sstemp0 int /= sstemp1 int
scoreboard players operation inp int /= sstemp1 int
scoreboard players operation sstemp1 int = res int

scoreboard players operation res int /= inp int
scoreboard players operation res int *= sstemp0 int

scoreboard players operation sstemp1 int %= inp int
scoreboard players operation sstemp1 int *= sstemp0 int
scoreboard players operation sstemp1 int /= inp int

scoreboard players operation res int += sstemp1 int

# 误差判定
scoreboard players operation sstemp_res int *= 1000 int
scoreboard players operation mod int = res int
scoreboard players operation mod int *= sstemp_inp int
scoreboard players operation mod int -= sstemp_res int
scoreboard players operation mod int -= sstemp_inp int
execute if score mod int matches 0.. run scoreboard players remove res int 1
execute if score mod int matches ..-1 run scoreboard players operation mod int += sstemp_inp int
scoreboard players operation mod int *= -1 int