data modify storage test:test args.dialog set value {\
  "type": "dialog_list",\
  \
  "title": {"text": "对话列表"},\
  "body": [],\
  "can_close_with_escape": true,\
  \
  "button_width": 150,\
  "columns": 2,\
  "dialogs": [],\
  "on_cancel": {\
    "action": "run_command",\
    "command": "trigger dialog_signal set 3"\
  }\
}