#math:test/loop_command
# math:test/_loop调用

$$(test_command)

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:test/loop_command with storage math:io {}