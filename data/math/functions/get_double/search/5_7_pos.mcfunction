#math:get_double/search/5_7_pos
execute if score sstemp int matches 1000..9999 run function math:get_double/search/5_pos
execute if score sstemp int matches 10000..99999 run function math:get_double/search/6_pos
execute if score sstemp int matches 100000..999999 run function math:get_double/search/7_pos