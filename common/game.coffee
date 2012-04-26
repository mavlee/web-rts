class Game
  # Static Variables
  @ROWS = 50
  @COLUMNS = 50
  @UPDATE_INTERVAL = 40
  @MAX_PLAYERS = 10

  board: null
  timestamp: null
  playerCount: 0

  constructor: () ->
    this.board = []
    for r in [0..Game.ROWS]
      this.board.push([])
      for c in [0..Game.COLUMNS]
        this.board[r].push(0)
    this.timestamp = (new Date()).getTime()
    this.playerCount = 0

  save: () ->
    return

  load: () ->
    return

  computeState: () ->
    return

  update: () ->
    return

  playerJoin: () ->
    this.playerCount++
    return

  playerLeave: () ->
    this.playerCount--
    return

  getPlayerCount: () ->
    return this.playerCount

if typeof global == "undefined"
  window.Game = Game
else
  exports.Game = Game
