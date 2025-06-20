dialog show @s {\
  "type": "dialog_list",\
  \
  "title": {"text": "路径点列表"},\
  "body": [],\
  "can_close_with_escape": true,\
  \
  "button_width": 150,\
  "columns": 2,\
  "dialogs": [\
    {\
      "type": "notice",\
      "title": "对话1"\
    }\
  ],\
  "on_cancel": {\
    "action": "run_command",\
    "command": "trigger dialog_signal set 3"\
  }\
}