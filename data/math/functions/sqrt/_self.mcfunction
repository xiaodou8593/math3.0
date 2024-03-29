#math:sqrt/_self
# 整数精度开根号
# 输入<sqrt,int>
# 输出<sqrt,int>

execute store result score stemp0 int store result score stemp1 int run scoreboard players operation stemp3 int = sqrt int
execute if score stemp3 int matches 1..329475 run function math:sqrt/range_4
execute if score stemp3 int matches 329476..18688328 run function math:sqrt/range_5
execute if score stemp3 int matches 18688329..533609999 run function math:sqrt/range_6
execute if score stemp3 int matches 533610000.. run function math:sqrt/range_7
scoreboard players operation stemp0 int /= sqrt int
scoreboard players operation sqrt int += stemp0 int
scoreboard players operation sqrt int /= 2 int
scoreboard players operation stemp1 int /= sqrt int
scoreboard players operation sqrt int += stemp1 int
scoreboard players operation sqrt int /= 2 int