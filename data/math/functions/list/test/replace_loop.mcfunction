#math:list/test/replace_loop
function math:list/_find_next
execute if score res int matches 1 run data modify storage math:io list[0] set from storage math:io item_b
execute if score res int matches 1 run function math:list/test/replace_loop