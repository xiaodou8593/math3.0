#math:test/_loop
# 重复执行指定次数命令
# 输入<inp,int>表示执行次数
# 输入storage math:io test_command

scoreboard players operation ssloop int = inp int
execute if score ssloop int matches 1.. run function math:test/loop_command with storage math:io {}