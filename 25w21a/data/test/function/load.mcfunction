scoreboard objectives add dialog_signal trigger

scoreboard objectives add dialog_set_dx trigger
scoreboard objectives add dialog_set_dy trigger
scoreboard objectives add dialog_set_dz trigger

scoreboard objectives add var dummy

data modify storage test:test args set value {}

schedule function test:activate 10t
