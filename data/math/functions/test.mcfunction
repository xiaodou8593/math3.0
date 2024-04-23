#math:test
kill @e[tag=test_marker]
execute in minecraft:overworld run summon marker 0 0 0 {Tags:["test_marker"],UUID:[I;0,0,0,2],CustomName:'{"text":"test_marker"}'}
execute in minecraft:overworld run scoreboard players set 0-0-0-0-2 int 8593
execute in minecraft:overworld as 0-0-0-0-2 run tellraw @a ["score: ", {"score":{"name":"@s","objective":"int"}}]
execute in minecraft:the_nether run tp 0-0-0-0-2 0 0 0
execute in minecraft:the_nether as 0-0-0-0-2 run tellraw @a ["score: ", {"score":{"name":"@s","objective":"int"}}]