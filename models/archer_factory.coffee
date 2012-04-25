class ArcherFactory extends Factory
  constructor: (o) ->
    super("Archer Factory", 100, 10, 10, o)

window.ArcherFactory = ArcherFactory
