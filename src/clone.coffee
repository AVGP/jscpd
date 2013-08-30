shjs = require "shelljs"

class Clone
  constructor: (@firstFile, @secondFile, @firstFileStart, @secondFileStart, @linesCount, @tokensCount, @numFileLines)->

  getLines: ->
    code = shjs.cat(@firstFile)
    lines = code.split '\n'
    start = @firstFileStart
    end = start + @linesCount
    lines[start..end].join("\n")

exports.Clone = Clone
