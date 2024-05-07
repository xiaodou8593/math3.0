#math:test/tp
# 聊天栏调用

# 生成一只盔甲架
function math:test/_coords
execute at @e[tag=test_coord,limit=1] run function math:test/facing_tester/_new
scoreboard players set @e[tag=result,limit=1] killtime 100

# 第一次tp
execute as @e[tag=result,limit=1] at @s run tp @s ~5 ~ ~

# 长时间递归
scoreboard players set inp int 100000
data modify storage math:io test_command set value "help help"
function math:test/_loop

# 第二次tp
execute as @e[tag=result,limit=1] at @s run tp @s ~5 ~ ~