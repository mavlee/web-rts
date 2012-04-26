Game = require('../common/game.js').Game
Unit = require('../models/unit.js').Unit
Mage = require('../models/mage.js').Mage
#Archer = require('../models/archer.js')
#Swordsman = require('../models/swordsman.js')
#Spearman = require('../models/spearman.js')

io = require('socket.io').listen(8080)
playerCount = 0

game = new Game()

io.sockets.on('connection', (socket) ->
  setInterval(() ->
    socket.emit('cycle', {"players": playerCount})
    console.log(game)
  , 2000)

  socket.on('playerJoin', (socket) ->
    playerCount++
    console.log('player join')
    test = new Mage(0)
  )

  socket.on('disconnect', (socket) ->
    playerCount--
    console.log('player left')
  )
)
