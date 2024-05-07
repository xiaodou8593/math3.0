#math:test/tp_lag
# 聊天栏调用

# 生成一只盔甲架
function math:test/_coords
execute at @e[tag=test_coord,limit=1] run function math:test/facing_tester/_new
scoreboard players set @e[tag=result,limit=1] killtime 100

schedule function math:test/tp_lag_next 10t replace