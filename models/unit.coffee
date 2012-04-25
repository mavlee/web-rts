class Unit
  constructor: (@name, l, d, ms, ar, as) ->
    this.life = l
    this.damage = d
    this.move_speed = ms
    this.attack_range = ar
    this.attack_speed = as

  life: 0
  damage: 0
  move_speed: 0
  attack_range: 0
  attack_speed: 0
