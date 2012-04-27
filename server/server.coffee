Game = require('../common/game.js').Game
Unit = require('../models/unit.js').Unit
Mage = require('../models/mage.js').Mage
Archer = require('../models/archer.js').Archer
Swordsman = require('../models/swordsman.js').Swordsman
Spearman = require('../models/spearman.js').Spearman

io = require('socket.io').listen(8080)
game = new Game()

playerIdCounter = 1
observerCount = 0

io.sockets.on('connection', (socket) ->
  observerCount++
  socket.emit('load game', game.save())

  # User becomes a player, instead of an observer
  socket.on('playerJoin', (socket) ->
    game.playerJoin()
    io.sockets.emit('receive id', {'id': playerIdCounter})
    playerIdCounter++

    console.log('player join')
    test = new Swordsman(0)
    if game.board[4][4] == 0
      game.board[4][4] = test
      io.sockets.emit('new piece', {"row": 4, "col": 4, "piece": test})
    else
      game.board[8][8] = test
      io.sockets.emit('new piece', {"row": 8, "col": 8, "piece": test})
  )

  socket.on('disconnect', (socket) ->
    observerCount--
    game.playerLeave()
    console.log('player left')
  )
)
