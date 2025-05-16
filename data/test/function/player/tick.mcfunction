scoreboard players enable @s dialog_signal

execute if score @s dialog_signal matches 1 run function test:dialog/click_hint1
execute if score @s dialog_signal matches 2 run function test:dialog/click_hint2
execute if score @s dialog_signal matches 3 run function test:dialog/cancel_hint

execute if score @s dialog_signal matches 1.. run scoreboard players set @s dialog_signal 0


scoreboard players enable @s dialog_set_dx
scoreboard players enable @s dialog_set_dy
scoreboard players enable @s dialog_set_dz

execute unless score @s dialog_set_dx matches 0 run function test:dialog/apply_pos_offset
execute unless score @s dialog_set_dy matches 0 run function test:dialog/apply_pos_offset
execute unless score @s dialog_set_dz matches 0 run function test:dialog/apply_pos_offset

