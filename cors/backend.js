// backend.js
const http = require('http');

http.createServer((req, res) => {
  if (req.url === '/data') {
    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ message: 'Hello from backend' }));
  } else {
    res.writeHead(404);
    res.end();
  }
}).listen(4000, () => {
  console.log('Backend running at http://localhost:4000');
});

