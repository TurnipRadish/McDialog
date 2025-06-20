scoreboard players enable @s dialog_set_rgb

execute if score @s dialog_set_rgb matches 1.. run function example:dialog/set_waypoint/comfirm

execute if score @s dialog_set_rgb matches 1.. run scoreboard players reset @s dialog_set_rgb
