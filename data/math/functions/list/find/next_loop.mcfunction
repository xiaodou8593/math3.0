#math:list/find/next_loop

data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]
scoreboard players add list_phi int 1

$function $(find_cmp)
execute if score sres int matches 1 run scoreboard players set ssloop int 1

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:list/find/next_loop with storage math:io {}