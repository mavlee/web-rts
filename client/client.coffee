game = new Game()
renderer = new Renderer(game)

#renderer.draw()
setInterval(() ->
  renderer.draw()
, 40)

socket = io.connect('http://localhost:8080')

socket.on('connect', () ->
  socket.emit('playerJoin', null)
)

socket.on('load game', (data) ->
  console.log(data)
  game.load(data)
)

socket.on('cycle', (data) ->
  console.log(data)
)

socket.on('new piece', (data) ->
  game.board[data['row']][data['col']] = data['piece']
  console.log(data)
)
