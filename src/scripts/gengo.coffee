# Description
#   gengo
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot gengo [<year>] - display japanese era name
#
# Notes:
# - 明治以降のみに対応。
# - 日付の判定はなく、境界の年には次の元年を優先。
#
# Author:
#   bouzuya
#
module.exports = (robot) ->
  M_START = 1868
  T_START = 1912
  S_START = 1926
  H_START = 1989

  robot.respond /gengo(\s+(\d+))?$/i, (res) ->
    currentYear = new Date().getYear() + 1900
    year = parseInt(res.match[2] ? currentYear, 10)
    eras = [
      { name: '明治', start: 1868 }
      { name: '大正', start: 1912 }
      { name: '昭和', start: 1926 }
      { name: '平成', start: 1989 }
    ]
    result = eras
      .filter (era) -> era.start <= year
      .reduce ((min, era) -> era if !max? or era.start > max.start), null
    unless result?
      res.send '知りません'
    else
      y = year - result.start
      res.send(result.name + (if y is 0 then '元' else y + 1) + '年')
