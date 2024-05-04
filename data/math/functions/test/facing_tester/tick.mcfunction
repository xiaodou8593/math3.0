#math:test/facing_tester/tick

execute as @e[tag=facing_tester] run function math:test/facing_tester/main

execute if entity @e[tag=facing_tester] run schedule function math:test/facing_tester/tick 1t replace