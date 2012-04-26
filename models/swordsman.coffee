if typeof global == "undefined"
  Unit = window.Unit
else
  Unit = require('../models/unit.js').Unit

class Swordsman extends Unit
  constructor: (o) ->
    super("Swordsman", 100, 10, 10, 10, 10, o)

if typeof global == "undefined"
  window.Swordsman = Swordsman
else
  exports.Swordsman = Swordsman
