$data modify storage test:test args.dialog set value {\
  type: "notice", \
  title: 'test', \
  body: [{type:"plain_message", contents:'$(contents)'}], \
  action:{\
    label:'点我', \
    on_click:{ \
      action: "show_dialog", \
      dialog: {} \
    }\
  } \
}