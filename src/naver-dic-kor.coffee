# Description
#   휴봇 네이버 사전 검색
#
# Configuration:
#   NAVER_API_KEY
#
# Commands:
#   hubot 사전 키워드
#
# Author:
#   Luis(박규철)[road2nowhere@naver.com]

naver = require('naver-dic-api')

module.exports = (robot) ->
  robot.respond /(사전) (.*)/i, (msg) ->
    q = msg.match[2]
    naver.dic q, (url)->
      msg.send url