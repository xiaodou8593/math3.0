#math:test/facing_tester/states/vertical_num

data modify storage math:io rotation set value [0.0f,0.0f]

scoreboard players operation sstemp_a int = facing_tester_num int
scoreboard players operation sstemp_a int *= 1000 int

scoreboard players set sstemp_k int -90
scoreboard players set sstemp_m int 0
scoreboard players set sstemp_b int 0

execute if score @s timer matches 90..270 run scoreboard players set sstemp_k int 90

execute if score @s timer matches 90..270 run scoreboard players set sstemp_m int 90
execute if score @s timer matches 271.. run scoreboard players set sstemp_m int 270

execute if score @s timer matches 90.. run scoreboard players operation sstemp_b int -= sstemp_a int
execute if score @s timer matches 271.. run scoreboard players operation sstemp_b int *= -1 int

scoreboard players operation sres int = @s timer
scoreboard players operation sres int -= sstemp_m int
scoreboard players operation sres int *= sstemp_a int
scoreboard players operation sres int /= sstemp_k int
scoreboard players operation sres int += sstemp_b int

execute store result storage math:io rotation[1] float 0.001 run scoreboard players get sres int
data modify entity @s Rotation set from storage math:io rotation