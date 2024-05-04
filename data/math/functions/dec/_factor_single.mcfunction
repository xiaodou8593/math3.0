#math:dec/_factor_single
# 计算dec*idec//jdec
# 输入{<dec,int>,<idec,int>,<jdec,int>}
# 输出<dec,int>
# dec: [-463409999, 463409999]
# idec: [-46339, 46340]
# jdec: [-168407, 168408]

scoreboard players operation sstemp_b int = dec int
scoreboard players operation dec int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int

scoreboard players operation dec int *= idec int
scoreboard players operation sstemp_res int = dec int
scoreboard players operation dec int /= jdec int
scoreboard players operation dec int *= 10000 int

scoreboard players operation sstemp_b int *= idec int
scoreboard players operation sstemp_res int %= jdec int
scoreboard players operation sstemp_res int *= 10000 int
scoreboard players operation sstemp_res int += sstemp_b int
scoreboard players operation sstemp_res int /= jdec int

scoreboard players operation dec int += sstemp_res int