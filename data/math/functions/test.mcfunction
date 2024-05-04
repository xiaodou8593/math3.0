#math:test

say hi

tag @e[tag=result] remove result
summon armor_stand 0 0 0 {Tags:["result"]}
item replace entity @e[tag=result,limit=1] armor.head with glass

execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.del_func set value "math:test"
execute as @e[tag=result,limit=1] run function marker_control:data/_store

tag @e[tag=result,limit=1] add entity_todel
scoreboard players set @e[tag=result,limit=1] killtime 20