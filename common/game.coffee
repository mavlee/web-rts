class Game
  # Static Variables
  @ROWS = 50
  @COLUMNS = 50
  @UPDATE_INTERVAL = 40
  @MAX_PLAYERS = 10

  board: null
  timestamp: null
  playerId: 0
  playerCount: 0

  constructor: () ->
    this.board = []
    for r in [0..Game.ROWS-1]
      this.board.push([])
      for c in [0..Game.COLUMNS-1]
        this.board[r].push(0)
    this.timestamp = (new Date()).getTime()
    this.playerCount = 0

  save: () ->
    data =
      'board': this.board
      'timestamp': this.timestamp
      'playerCount': this.playerCount
    return data

  load: (data) ->
    this.board = data['board']
    this.timestamp = data['timestamp']
    this.playerCount = data['playerCount']

  computeState: () ->
    return

  update: () ->
    return

  setPlayerId: (id) ->
    this.playerId = id

  playerJoin: () ->
    this.playerCount++

  playerLeave: () ->
    this.playerCount--

  getPlayerCount: () ->
    return this.playerCount

if typeof global == "undefined"
  window.Game = Game
else
  exports.Game = Game
