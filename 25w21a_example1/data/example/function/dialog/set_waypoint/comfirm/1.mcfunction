$dialog show @s {\
  "type": "confirmation",\
\
  "title": "是否设置路径点",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        [{"text": "当前位置：", },{text:"($(x), $(y), $(z))"}, "\n"],\
        [{"text": "颜色：", },{"text":"#$(rgb_hex)","color": '#$(rgb_hex)'}]\
      ],\
      "width": 512\
    }\
  ],\
  "can_close_with_escape": true,\
  \
  "yes": {\
    "label": {\
      "text": "是", "color": "green"\
    },\
    "on_click": {\
      "action": "run_command",\
      "command": "function example:dialog/set_waypoint/yes with storage example:data args"\
    }\
  },\
  "no": {\
    "label": {\
      "text": "否", "color": "red"\
    },\
    "on_click": {\
      "action": "run_command",\
      "command": "trigger dialog_signal set 3"\
    }\
  }\
}