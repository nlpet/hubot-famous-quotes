# Description:
#   Want a random quote? Just address your hubot
#   with the argument quote and a category.
#
#   This script relys on the Mashape Urban Dictionary API.
#   You will need to set up an account and get an application
#   key before you can use the script.
#
#   https://www.mashape.com
#
# Dependencies:
#   "unirest": "0.4.2"
#
# Configuration:
#   HUBOT_MASHAPE_KEY
#
# Commands:
#   hubot quote (returns a random quote)
#   hubot quote science (returns a science-related quote)
#
# Author:
#   schottkey7

unirest = require('unirest')

module.exports = (robot) ->
  robot.respond /(quote)(.*)/i, (msg) ->
    phrase = msg.message.text
    term = phrase.substring(phrase.indexOf('quote') + 6)
    unirest.
      get("https://andruxnet-random-famous-quotes.p.mashape.com/cat={term}").
      header('X-Mashape-Key', process.env.HUBOT_MASHAPE_KEY).
      header('Accept', 'text/plain').
      end (result) ->
        answer = result.body.list[0]
        if typeof answer == 'undefined'
          response = "Could not find definition. Sorry dummy."
        else
          response = "*Definition:*\n#{answer.definition}\n*Example:*\n#{answer.example}"
        msg.send response
        return
