execute store result storage test:test args.dx double 1 run scoreboard players get @s dialog_set_dx
execute store result storage test:test args.dy double 1 run scoreboard players get @s dialog_set_dy
execute store result storage test:test args.dz double 1 run scoreboard players get @s dialog_set_dz

function test:dialog/apply_pos_offset/1 with storage test:test args

scoreboard players reset @s dialog_set_dx
scoreboard players reset @s dialog_set_dy
scoreboard players reset @s dialog_set_dz
