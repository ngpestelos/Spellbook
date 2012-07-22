var net = require('net');
var server = net.createServer(function (client) {
  client.end('hello net world\n');
});

server.listen(8000, '127.0.0.1');
