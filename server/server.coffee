io = require('socket.io').listen(8080)
playerCount = 0

io.sockets.on('connection', (socket) ->
  setInterval(() ->
    socket.emit('cycle', {"players": playerCount})
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
