#> origins-kombo:config/default/message_strings
#
#   > The default message strings
#
#@public


#   Set the default values for the message strings
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.msg.started set value '{"translate": "Kombo casting started!", "color": "green"}'

data modify storage rx:io playerdb.player.data.origins-kombo.msg.cancelled set value '{"translate": "Kombo casting forcibly stopped!", "color": "red"}'

data modify storage rx:io playerdb.player.data.origins-kombo.msg.unregistered set value '{"translate": "Unregistered kombo pattern!", "color": "red"}'

data modify storage rx:io playerdb.player.data.origins-kombo.msg.timed_out set value '{"translate": "Kombo casting timed out!", "color": "red"}'

function rx.playerdb:api/save_self