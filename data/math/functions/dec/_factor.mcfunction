#math:dec/_factor
# 计算dec*idec//jdec
# 输入{<dec,int>,<idec,int>,<jdec,int>}
# 输出<dec,int>
# dec: [-463399999, 463409999]
# idec: [-463399999, 463409999]
# jdec: [-214748364, 214748364]

# 获取符号
scoreboard players set sstemp_sign int 1
execute if score dec int matches ..-1 run scoreboard players operation sstemp_sign int *= -1 int
execute if score dec int matches ..-1 run scoreboard players operation dec int *= -1 int
execute if score idec int matches ..-1 run scoreboard players operation sstemp_sign int *= -1 int
execute if score idec int matches ..-1 run scoreboard players operation idec int *= -1 int
execute if score jdec int matches ..-1 run scoreboard players operation sstemp_sign int *= -1 int
execute if score jdec int matches ..-1 run scoreboard players operation jdec int *= -1 int

# 拆解
scoreboard players operation sstemp_a int = dec int
scoreboard players operation sstemp_b int = dec int
scoreboard players operation sstemp_a int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int
scoreboard players operation sstemp_d int = idec int
scoreboard players operation idec int /= 10000 int
scoreboard players operation sstemp_d int %= 10000 int

# E8
scoreboard players operation res int = sstemp_a int
scoreboard players operation res int *= idec int
scoreboard players operation inp int = jdec int
scoreboard players operation res int *= 10 int
scoreboard players set sstemp0 int 1000
scoreboard players set sstemp1 int 1
execute if score inp int matches 2147484..8589935 run scoreboard players set sstemp1 int 2
execute if score inp int matches 8589936.. run scoreboard players set sstemp1 int 25
scoreboard players operation sstemp_res int = res int
scoreboard players operation sstemp_inp int = inp int
scoreboard players operation sstemp0 int /= sstemp1 int
scoreboard players operation inp int /= sstemp1 int
scoreboard players operation sstemp2 int = res int
scoreboard players operation res int /= inp int
scoreboard players operation res int *= sstemp0 int
scoreboard players operation sstemp2 int %= inp int
scoreboard players operation sstemp2 int *= sstemp0 int
scoreboard players operation sstemp2 int /= inp int
scoreboard players operation res int += sstemp2 int
scoreboard players operation sstemp_res int *= 1000 int
scoreboard players operation mod int = res int
scoreboard players operation mod int *= sstemp_inp int
scoreboard players operation mod int -= sstemp_res int
scoreboard players operation mod int -= sstemp_inp int
execute if score mod int matches 0.. run scoreboard players remove res int 1
execute if score mod int matches ..-1 run scoreboard players operation mod int += sstemp_inp int
scoreboard players operation mod int *= -1 int
scoreboard players operation dec int = res int
scoreboard players operation dec int *= 10000 int

# E4
scoreboard players operation res int = mod int
scoreboard players operation sstemp_a int *= sstemp_d int
scoreboard players operation res int += sstemp_a int
scoreboard players operation idec int *= sstemp_b int
scoreboard players operation res int += idec int
scoreboard players operation inp int = jdec int
scoreboard players operation res int *= 10 int
scoreboard players operation sstemp_res int = res int
scoreboard players operation sstemp_inp int = inp int
scoreboard players operation inp int /= sstemp1 int
scoreboard players operation sstemp2 int = res int
scoreboard players operation res int /= inp int
scoreboard players operation res int *= sstemp0 int
scoreboard players operation sstemp2 int %= inp int
scoreboard players operation sstemp2 int *= sstemp0 int
scoreboard players operation sstemp2 int /= inp int
scoreboard players operation res int += sstemp2 int
scoreboard players operation sstemp_res int *= 1000 int
scoreboard players operation mod int = res int
scoreboard players operation mod int *= sstemp_inp int
scoreboard players operation mod int -= sstemp_res int
scoreboard players operation mod int -= sstemp_inp int
execute if score mod int matches 0.. run scoreboard players remove res int 1
execute if score mod int matches ..-1 run scoreboard players operation mod int += sstemp_inp int
scoreboard players operation mod int *= -1 int
scoreboard players operation dec int += res int

# E0
scoreboard players operation res int = mod int
scoreboard players operation sstemp_b int *= sstemp_d int
scoreboard players operation res int += sstemp_b int
scoreboard players operation res int *= 10 int
scoreboard players operation jdec int /= sstemp1 int
scoreboard players operation sstemp2 int = res int
scoreboard players operation res int /= jdec int
scoreboard players operation res int *= sstemp0 int
scoreboard players operation sstemp2 int %= jdec int
scoreboard players operation sstemp2 int *= sstemp0 int
scoreboard players operation sstemp2 int /= jdec int
scoreboard players operation res int += sstemp2 int
scoreboard players operation res int /= 10000 int
scoreboard players operation dec int += res int

# 符号
scoreboard players operation dec int *= sstemp_sign int