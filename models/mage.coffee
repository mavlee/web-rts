if typeof global == "undefined"
  Unit = window.Unit
else
  Unit = require('../models/unit.js').Unit

class Mage extends Unit
  constructor: (o) ->
    super("Mage", 100, 10, 10, 10, 10, o)

if typeof global == "undefined"
  window.Mage = Mage
else
  exports.Mage = Mage
