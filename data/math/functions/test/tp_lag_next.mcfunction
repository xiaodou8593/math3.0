#math:test/tp_lag_next
# math:test/tp_lag异步调用

# 第一次tp
execute as @e[tag=facing_tester,limit=1] at @s run tp @s ~5 ~ ~

# 长时间递归
scoreboard players set inp int 100000
data modify storage math:io test_command set value "help help"
function math:test/_loop

# 第二次tp
execute as @e[tag=facing_tester,limit=1] at @s run tp @s ~5 ~ ~