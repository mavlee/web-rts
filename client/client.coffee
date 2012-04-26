socket = io.connect('http://localhost:8080')

socket.on('connect', () ->
  socket.emit('playerJoin', null)
)

socket.on('cycle', (data) ->
  console.log(data)
)
