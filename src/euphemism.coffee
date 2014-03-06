cheerio = require("cheerio")

module.exports = (robot) ->
  robot.respond /(euphemism|euph)( me)?/i, (msg) ->
    robot.http('http://walkingdead.net/perl/euphemism')
      .get() (err, res, body) ->
        $ = cheerio.load(body)
        mine = $('td').first().text().trim()
        msg.send mine
