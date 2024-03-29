#math:marker_pool/add_loop

summon marker 0 0 0 {Tags:["stmp_marker","stmp_marker_temp"],CustomName:'{"text":"stmp_marker"}'}

scoreboard players add stmp_cnt int 1
execute if score stmp_cnt int < inp int run function math:marker_pool/add_loop