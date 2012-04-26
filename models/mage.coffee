class Mage extends (Unit or require('../models/unit.js').Unit)
  constructor: (o) ->
    super("Mage", 100, 10, 10, 10, 10, o)

if typeof global == "undefined"
  window.Mage = Mage
else
  exports.Mage = Mage
