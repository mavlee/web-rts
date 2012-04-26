class Game
  # Static Variables
  @ROWS = 50
  @COLUMNS = 50
  @UPDATE_INTERVAL = 40
  @MAX_PLAYERS = 10

  board: null
  timestamp: null

  constructor: () ->
    this.board = []
    for r in [0..@ROWS]
      this.board.push([])
      for c in [0..@COLS]
        this.board[r].push(0)
    this.timestamp = (new Date()).getTime()

  save: () ->
    return

  load: () ->
    return

  computeState: () ->
    return

  update: () ->
    return

  playerJoin: () ->
    return

  playerLeave: () ->
    return

  getPlayerCount() ->
    return
