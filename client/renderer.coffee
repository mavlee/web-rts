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
    for row in [0..this.game.board.length-1]
      for col in [0..this.game.board[row].length-1]
        if (row % 2 == 0 and col % 2 == 0) or (row % 2 == 1 and col % 2 == 1)
          this.canvas.drawImage(img, 0, 0, 200, 200, 36*col, row*21, 45, 45)
          if this.game.board[row][col] != 0
            this.canvas.fillRect(36*col, row*21, 20, 20)

window.Renderer = Renderer
