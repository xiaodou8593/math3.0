#math:dec/_mult
# 计算dec*idec//10000
# 输入{<dec,int>,<idec,int>}
# 输出<dec,int>
# dec: [-463399999, 463409999]
# idec: [-463399999, 463409999]

scoreboard players operation sstemp_b int = dec int
scoreboard players operation dec int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int

scoreboard players operation sstemp_d int = idec int
scoreboard players operation idec int /= 10000 int
scoreboard players operation sstemp_d int %= 10000 int

scoreboard players operation sstemp_a int = dec int
scoreboard players operation dec int *= idec int
scoreboard players operation dec int *= 10000 int

scoreboard players operation sstemp_a int *= sstemp_d int
scoreboard players operation idec int *= sstemp_b int
scoreboard players operation sstemp_a int += idec int
scoreboard players operation dec int += sstemp_a int

scoreboard players operation sstemp_b int *= sstemp_d int
scoreboard players operation sstemp_b int /= 10000 int
scoreboard players operation dec int += sstemp_b int