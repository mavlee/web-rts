// Generated by CoffeeScript 1.3.1
(function() {
  var g, game, io, playerCount;

  g = require('../common/game.js');

  io = require('socket.io').listen(8080);

  playerCount = 0;

  game = new g.Game();

  io.sockets.on('connection', function(socket) {
    setInterval(function() {
      socket.emit('cycle', {
        "players": playerCount
      });
      return console.log(game);
    }, 2000);
    socket.on('playerJoin', function(socket) {
      playerCount++;
      return console.log('player join');
    });
    return socket.on('disconnect', function(socket) {
      playerCount--;
      return console.log('player left');
    });
  });

}).call(this);
