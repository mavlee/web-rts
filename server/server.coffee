Game = require('../common/game.js').Game
Unit = require('../models/unit.js').Unit
Mage = require('../models/mage.js').Mage
Archer = require('../models/archer.js').Archer
Swordsman = require('../models/swordsman.js').Swordsman
Spearman = require('../models/spearman.js').Spearman

io = require('socket.io').listen(8080)
playerCount = 0

game = new Game()

io.sockets.on('connection', (socket) ->
  setInterval(() ->
    socket.emit('cycle', {"players": playerCount})
  , 2000)

  socket.on('playerJoin', (socket) ->
    playerCount++
    console.log('player join')
    test = new Mage(0)
    if game.board[4][4] == 0
      game.board[4][4] = test
      io.sockets.emit('new piece', {"row": 4, "col": 4, "piece": test})
    else
      game.board[8][8] = test
      io.sockets.emit('new piece', {"row": 8, "col": 8, "piece": test})
  )

  socket.on('disconnect', (socket) ->
    playerCount--
    console.log('player left')
  )
)
