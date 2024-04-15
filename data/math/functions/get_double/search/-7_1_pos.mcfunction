#math:get_double/search/-7_1_pos

execute if score sstemp int matches 1..999 run function math:get_double/search/-7_-5_pos
execute if score sstemp int matches 1000..999999 run function math:get_double/search/-4_-2_pos
execute if score sstemp int matches 1000000..999999999 run function math:get_double/search/-1_1_pos