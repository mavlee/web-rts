class Unit
  # Unit attributes
  # Speeds and times are in ms
  owner_id: 0
  life: 0
  damage: 0
  move_speed: 0
  attack_range: 0
  attack_speed: 0
  last_move_time: 0
  last_attack_time: 0

  constructor: (@name, l, d, ms, ar, as, o) ->
    this.life = l
    this.damage = d
    this.move_speed = ms
    this.attack_range = ar
    this.attack_speed = as
    this.owner_id = o

  canMove: () ->
    if (new Date()).getTime() - this.last_move_time >= move_speed
      return true
    return false

  canAttack: () ->
    if (new Date()).getTime() - this.last_attack_time >= attack_speed
      return true
    return false

if typeof global == "undefined"
  window.Unit = Unit
else
  exports.Unit = Unit
