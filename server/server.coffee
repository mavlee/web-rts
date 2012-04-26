g = require('../common/game.js')
io = require('socket.io').listen(8080)
playerCount = 0

game = new g.Game()

io.sockets.on('connection', (socket) ->
  setInterval(() ->
    socket.emit('cycle', {"players": playerCount})
    console.log(game)
  , 2000)

  socket.on('playerJoin', (socket) ->
    playerCount++
    console.log('player join')
  )

  socket.on('disconnect', (socket) ->
    playerCount--
    console.log('player left')
  )
)
