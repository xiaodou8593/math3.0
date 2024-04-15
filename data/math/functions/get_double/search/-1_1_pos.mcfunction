#math:get_double/search/-1_1_pos
execute if score sstemp int matches 1000000..9999999 run function math:get_double/search/-1_pos
execute if score sstemp int matches 10000000..99999999 run function math:get_double/search/0_pos
execute if score sstemp int matches 100000000..999999999 run function math:get_double/search/1_pos