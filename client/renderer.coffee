class Renderer
  game: null
  canvas: null

  constructor: (game) ->
    this.game = game
    this.canvas = document.getElementById('canvas').getContext('2d')

  draw: () ->
    img = new Image()
    img.src = 'client/images/hexagon.png'
    this.canvas.clearRect(0, 0, 960, 540)
    this.canvas.fillStyle = "#000"
    this.canvas.strokeStyle = "#000"
    for row in [0..game.board.length]
      for col in [0..game.board[row].length]
        if (row % 2 == 0 and col % 2 == 0) or (row % 2 == 1 and col % 2 == 1)
          canvas.drawImage(img, 0, 0, 200, 200, 36*col, row*21, 45, 45)
      
setInterval(draw, 40)
