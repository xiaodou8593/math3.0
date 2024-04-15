#math:get_double/search/-4_-2_neg
execute if score sstemp int matches 1000..9999 run function math:get_double/search/-4_neg
execute if score sstemp int matches 10000..99999 run function math:get_double/search/-3_neg
execute if score sstemp int matches 100000..999999 run function math:get_double/search/-2_neg