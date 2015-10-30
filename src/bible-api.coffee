# Description:
#   Access Tim Morgan's bible-api.com to display Bible passages
# Translations:
#   /cherokee Cherokee New Testament
#   /kjv  King James Version
#   /web  World English Bible (default)
#   /clementine Clementine Latin Vulgate
#   /almeida  João Ferreira de Almeida - Portuguese
#   /rccv Romanian Corrected Cornilescu Version 
#
# Dependencies:
# None
#
# Configuration:
# None
#
# Commands:
# hubot bible <optional /translation> <book chapter:verse>
#
# Author:
# Brendan <me@brendanberkley.com>

module.exports = (robot) ->
  # regex inspired by 
  # https://github.com/github/hubot-scripts/blob/master/src/scripts/lmgtfy.coffee
  robot.respond /bible?\s?(?:\/(\w*))? (.*)/i, (msg) ->
    url = "http://bible-api.com/#{msg.match[2]}"
    url += "?translation=#{msg.match[1]}" if msg.match[1]

    robot.http(url)
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        # error checking code here
        if err
          msg.send "Error: #{err}"
          return
        else
          data = JSON.parse body

          if data.error
            reply = data.error
          else
            reply = "\n#{data.reference} (#{data.translation_id})\n"

            for verse in data.verses
              reply += "#{verse.verse} #{verse.text}"

          msg.send reply