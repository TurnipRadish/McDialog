$summon armor_stand ~ ~ ~ {CustomNameVisible:1b, CustomName:[{text:'未命名路径点', color:'#$(rgb_hex)'}], Tags:['example_waypoint']}

$waypoint modify @n[tag=example_waypoint,distance=..1] color hex $(rgb_hex)

attribute @n[tag=example_waypoint,distance=..1] waypoint_transmit_range base set 320

tp @n[tag=example_waypoint,distance=..1] ~ ~1 ~

data modify storage example:data args.input set value {\
      "type": "notice",\
      "title": "未命名路径点",\
\
      "body": [\
        {\
          "type": "plain_message",\
          "contents": "位置：($(x), $(y), $(z))",\
        }\
      ]\
    }\
    
data modify storage example:data args.input.owner_uuid set from entity @s UUID
data modify storage example:data args.input.title set value '未命名路径点'

data modify storage example:data waypoint.list append from storage example:data args.input
