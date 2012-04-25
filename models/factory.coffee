class Factory
  constructor: (@name, l, st, bcd, o) ->
    this.life = l
    this.spawn_time = st
    this.build_cooldown = bcd
    this.owner_id = o

  life: 0
  spawn_time: 0
  build_cooldown: 0
  owner_id: 0

window.Factory = Factory
