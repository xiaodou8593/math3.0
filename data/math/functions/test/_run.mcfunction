#math:test/_run
# 执行指定命令
# 输入storage math:io test_command

scoreboard players set ssloop int 1
execute if score ssloop int matches 1.. run function math:test/loop_command with storage math:io {}