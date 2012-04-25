class Factory
  constructor: (@name, l, st, bcd) ->
    this.life = l
    this.spawn_time = st
    this.build_cooldown = bcd

  life: 0
  spawn_time: 0
  build_cooldown: 0
