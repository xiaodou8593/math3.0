#math:_4div_pos
# 四位精度除法，用inp去除res，仅支持非负数
# 输入{<inp,int>,<res,int>}
#[1,2147483],1
#[2147484,8589935],2
#[8589936,1000000000],25

scoreboard players operation res int *= 10 int
scoreboard players set sstemp0 int 1000
scoreboard players set sstemp1 int 1
execute if score inp int matches 2147484..8589935 run scoreboard players set sstemp1 int 2
execute if score inp int matches 8589936.. run scoreboard players set sstemp1 int 25

scoreboard players operation sstemp0 int /= sstemp1 int
scoreboard players operation inp int /= sstemp1 int
scoreboard players operation sstemp1 int = res int

scoreboard players operation res int /= inp int
scoreboard players operation res int *= sstemp0 int

scoreboard players operation sstemp1 int %= inp int
scoreboard players operation sstemp1 int *= sstemp0 int
scoreboard players operation sstemp1 int /= inp int

scoreboard players operation res int += sstemp1 int