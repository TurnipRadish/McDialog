scoreboard players add #temp var 1

execute store result storage test:test args.contents int 1 run scoreboard players get #temp var

function test:dialog/snbt/dialog_list
data modify storage test:test args.dialog.dialogs append from storage test:test args.dialog
data modify storage test:test args.dialog.dialogs[0].dialogs append from storage test:test args.dialog

function test:dialog/macro with storage test:test args
