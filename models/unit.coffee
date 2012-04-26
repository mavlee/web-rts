class Unit
  constructor: (@name, l, d, ms, ar, as, o) ->
    this.life = l
    this.damage = d
    this.move_speed = ms
    this.attack_range = ar
    this.attack_speed = as
    this.owner_id = o

  life: 0
  damage: 0
  move_speed: 0
  attack_range: 0
  attack_speed: 0
  owner_id: 0

if typeof global == "undefined"
  window.Unit = Unit
else
  exports.Unit = Unit
