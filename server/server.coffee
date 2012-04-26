io = require('socket.io').listen(8080)
playerCount = 0

io.sockets.on('connection', (socket) ->
  playerCount++
  console.log('player join')
  setInterval(() ->
    socket.emit('cycle', {"players": playerCount})
  , 2000)

  socket.on('test', (data) ->
    console.log(data)
  )

  socket.on('disconnect', (socket) ->
    playerCount--
    console.log('player left')
  )
)
