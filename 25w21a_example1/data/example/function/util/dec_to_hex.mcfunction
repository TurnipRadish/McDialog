scoreboard players set #16 var 16

# get the number value
scoreboard players operation #index var = #temp var
scoreboard players operation #index var %= #16 var
# get the hex char
execute store result storage example:data args.index int 1 run scoreboard players get #index var
data modify storage example:data list set value ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F']
function example:util/index_of_list with storage example:data args
# push the hex char
data modify storage example:data args.hex_list prepend from storage example:data args.output

scoreboard players operation #temp var /= #16 var

# loop
execute if score #temp var matches 1.. run function example:util/dec_to_hex
