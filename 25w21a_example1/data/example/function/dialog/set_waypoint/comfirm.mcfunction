# get the rbg component from score trigger
scoreboard players operation #temp var = @s dialog_set_rgb

scoreboard players set #100 var 100

scoreboard players operation #z var = #temp var
scoreboard players operation #z var %= #100 var

scoreboard players operation #temp var /= #100 var

scoreboard players operation #y var = #temp var
scoreboard players operation #y var %= #100 var

scoreboard players operation #temp var /= #100 var

scoreboard players operation #x var = #temp var
scoreboard players operation #x var = #100 var

# clear the result list
data modify storage example:data args.hex_list set value []
# get red hex
execute store result score #temp var run scoreboard players get #x var 
function example:util/dec_to_hex
data modify storage example:data args.x set from storage example:data args.output
# get green hex
execute store result score #temp var run scoreboard players get #y var
function example:util/dec_to_hex
data modify storage example:data args.y set from storage example:data args.output
# get blue hex
execute store result score #temp var run scoreboard players get #z var
function example:util/dec_to_hex
data modify storage example:data args.z set from storage example:data args.output
# cat to get rgb hex
data modify storage example:data args.input set from storage example:data args.hex_list
data modify storage example:data args.output set value ''
function example:util/cat_str_list
data modify storage example:data args.rgb_hex set from storage example:data args.output

# get current position
data modify storage example:data args.x set from entity @s Pos[0]
data modify storage example:data args.y set from entity @s Pos[1]
data modify storage example:data args.z set from entity @s Pos[2]

function example:dialog/set_waypoint/comfirm/1 with storage example:data args
