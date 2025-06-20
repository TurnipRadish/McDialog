execute if score @s dialog_signal matches 1 run title @s actionbar {text:"你点击了一个带trigger命令的对话框按钮", color:"yellow"}

scoreboard players reset @s dialog_signal
