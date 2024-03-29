#math:list/_print
# 输出列表

tellraw @a "math:list{"
tellraw @a ["    list_n: ", {"score":{"name":"list_n","objective":"int"}}, ","]
tellraw @a ["    list_phi: ", {"score":{"name":"list_phi","objective":"int"}}, ","]
tellraw @a ["    list: ", {"nbt":"list","storage":"math:io"}]
tellraw @a "}"