#math:get_double/search/2_4_neg
execute if score sstemp int matches 1..9 run function math:get_double/search/2_neg
execute if score sstemp int matches 10..99 run function math:get_double/search/3_neg
execute if score sstemp int matches 100..999 run function math:get_double/search/4_neg