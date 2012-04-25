canvas = document.getElementById('canvas').getContext('2d')

draw = () ->
  img = new Image()
  img.src = 'client/images/hexagon.png'
  canvas.clearRect(0, 0, 960, 540)
  canvas.fillStyle = "#000"
  canvas.strokeStyle = "#000"
  for row in [0..36]
    for col in [0..36]
      if (row % 2 == 0 and col % 2 == 0) or (row % 2 == 1 and col % 2 == 1)
        canvas.drawImage(img, 0, 0, 200, 200, 45*col, row*22.5, 45, 45)
      
setInterval(draw, 40)
