var io = require('socket.io').listen(8080);

io.sockets.on('connection', function (socket) {
    setInterval(function() { socket.emit('cycle', {"hi": "bye"}); }, 2000);
    //socket.emit('news', { hello: 'world' });
    socket.on('test', function (data) {
      console.log(data);
    });
});
