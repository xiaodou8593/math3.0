#math:get_double/test/loop

tellraw @a "---"

scoreboard players operation float_exp int = loop int

scoreboard players set float_int0 int 1000
scoreboard players set float_int1 int 0
scoreboard players set float_sign int 1
function math:get_double/test/reflect
scoreboard players set float_sign int -1
function math:get_double/test/reflect

scoreboard players set float_int0 int 9999
scoreboard players set float_int1 int 9999
scoreboard players set float_sign int 1
function math:get_double/test/reflect
scoreboard players set float_sign int -1
function math:get_double/test/reflect

scoreboard players add loop int 1
execute if score loop int < 9 int run function math:get_double/test/loop