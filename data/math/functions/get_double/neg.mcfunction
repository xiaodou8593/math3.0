#math:get_double/neg

execute store result score sstemp int run data get storage math:io double -100000000
execute if score sstemp int matches 0 run scoreboard players set digits int 0
execute if score sstemp int matches 1..999999999 run function math:get_double/search/-7_1_neg
execute if score sstemp int matches 0..999999999 run return 0

execute store result score sstemp int run data get storage math:io double -0.1
execute if score sstemp int matches 1..9999999 run function math:get_double/search/2_8_neg