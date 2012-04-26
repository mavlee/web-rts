io = require('socket.io').listen(8080)

io.sockets.on('connection', (socket) ->
  setInterval(() ->
    socket.emit('cycle', {"hi": "bye"})
  , 2000)
  socket.on('test', (data) ->
    console.log(data)
  )
)
