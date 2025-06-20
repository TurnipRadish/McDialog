data modify storage example:data args.x set from storage example:data args.output
data modify storage example:data args.y set from storage example:data args.input[0]

function example:util/cat_2_str with storage example:data args

data remove storage example:data args.input[0]
execute if data storage example:data args.input[] run function example:util/cat_str_list