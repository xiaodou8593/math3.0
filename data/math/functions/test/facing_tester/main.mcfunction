#math:test/facing_tester/main

function marker_control:data/_get

function math:test/facing_tester/run_state with storage marker_control:io result
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

execute store result score temp int run data get storage marker_control:io result.facing_rate
scoreboard players operation @s timer += temp int
execute if score @s timer matches 360.. run function math:test/facing_tester/next_state