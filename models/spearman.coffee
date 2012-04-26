class Spearman extends Unit
  constructor: (o) ->
    super("Spearman", 100, 10, 10, 10, 10, o)

if typeof global == "undefined"
  window.Spearman = Spearman
else
  exports.Spearman = Spearman
