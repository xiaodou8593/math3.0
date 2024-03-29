#math:list/sort/mloop0
$function $(sort_cmp)
execute if score sres int matches 1 run function math:list/sort/mchoice1
execute if score sres int matches 0 run function math:list/sort/mchoice0
execute if score stemp0 int matches 1.. if score stemp1 int matches 1.. run function math:list/sort/mloop0 with storage math:io {}