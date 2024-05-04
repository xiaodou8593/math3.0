#math:dec/_sqr
# 计算dec*dec//10000
# dec: [-463399999, 463409999]

scoreboard players operation sstemp_b int = dec int
scoreboard players operation dec int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int
scoreboard players operation sstemp_a int = dec int

scoreboard players operation dec int *= dec int
scoreboard players operation dec int *= 10000 int

scoreboard players operation sstemp_a int *= sstemp_b int
scoreboard players operation sstemp_a int *= 2 int
scoreboard players operation dec int += sstemp_a int

scoreboard players operation sstemp_b int *= sstemp_b int
scoreboard players operation sstemp_b int /= 10000 int
scoreboard players operation dec int += sstemp_b int