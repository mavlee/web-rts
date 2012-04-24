class Unit
  constructor: (@name, l, ms, ar, as) ->
    this.life = l
    this.move_speed = ms
    this.attack_range = ar
    this.attack_speed = as

  life: 0
  move_speed: 0
  attack_range: 0
  attack_speed: 0
