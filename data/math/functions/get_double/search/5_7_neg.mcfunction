#math:get_double/search/5_7_neg
execute if score sstemp int matches 1000..9999 run function math:get_double/search/5_neg
execute if score sstemp int matches 10000..99999 run function math:get_double/search/6_neg
execute if score sstemp int matches 100000..999999 run function math:get_double/search/7_neg