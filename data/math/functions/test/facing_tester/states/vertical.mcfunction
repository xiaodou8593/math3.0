#math:test/facing_tester/states/vertical

data modify storage math:io rotation set value [0.0f,0.0f]
execute store result storage math:io rotation[1] float -1 run scoreboard players get @s timer
data modify entity @s Rotation set from storage math:io rotation