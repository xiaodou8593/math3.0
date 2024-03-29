#math:list/test/find_loop

function math:list/_find_next

execute if score res int matches 1 run data modify storage math:io result append from storage math:io list[0]
execute if score res int matches 1 run function math:list/test/find_loop