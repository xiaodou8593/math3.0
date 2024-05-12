#math:test/facing_tester/tick
# math:test/facing_tester/_new异步调用

execute as @e[tag=facing_tester] run function math:test/facing_tester/main

execute if entity @e[tag=facing_tester] run schedule function math:test/facing_tester/tick 1t replace