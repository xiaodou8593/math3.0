#math:get_double/pos

#[-detect, 8-detect]
# detect = 4
#1000000000..	>1*10^4
#100000000	1*10^4
#10000000	1*10^3
#1000000	1*10^2
#100000		1*10^1
#10000		1*10^0
#1000		1*10^-1
#100		1*10^-2
#10		1*10^-3
#1		1*10^-4
#0		<1*10^-4

execute store result score sstemp int run data get storage math:io double 100000000
execute if score sstemp int matches 0 run scoreboard players set digits int 0
execute if score sstemp int matches 1..999999999 run function math:get_double/search/-7_1_pos
execute if score sstemp int matches 0..999999999 run return 0

execute store result score sstemp int run data get storage math:io double 0.1
execute if score sstemp int matches 1..9999999 run function math:get_double/search/2_8_pos