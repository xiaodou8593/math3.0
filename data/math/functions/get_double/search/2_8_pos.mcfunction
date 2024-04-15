#math:get_double/search/2_8_pos

execute if score sstemp int matches 1..999 run function math:get_double/search/2_4_pos
execute if score sstemp int matches 1000..999999 run function math:get_double/search/5_7_pos
execute if score sstemp int matches 1000000..9999999 run function math:get_double/search/8_pos