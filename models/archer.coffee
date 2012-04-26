if typeof global == "undefined"
  Unit = window.Unit
else
  Unit = require('../models/unit.js').Unit

class Archer extends Unit
  constructor: (o) ->
    super("Archer", 100, 10, 10, 10, 10, o)

if typeof global == "undefined"
  window.Archer = Archer
else
  exports.Archer = Archer
