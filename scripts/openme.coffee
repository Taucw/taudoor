# Description:
#   Open tau's door and other useless an fun stuff
#
# Commands:
#   hubot open me
#   hubot merci  (say thank you to door, in french)

module.exports = (robot) ->

  robot.respond /open me/i, (msg) ->
    msg.http(process.env.DOOR_URL)
      .get() (err, res, body) ->
        msg.send 'Door open'

  robot.respond /merci/i, (msg) ->
    msg.send 'De rien :)'

  robot.respond /thanks/i, (msg) ->
    msg.send 'At your service :)'

  robot.respond /gracias/i, (msg) ->
    msg.send 'De nada :)'
  robot.respond /you suck/i, (msg) ->
    msg.send 'Fuck off !!'