// frontend.js
const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send(`
    <html>
      <body>
        <h1>CORS Test</h1>
        <script>
          fetch('http://localhost:4000/data')
            .then(res => res.json())
            .then(data => console.log(data))
            .catch(err => console.error('CORS blocked:', err));
        </script>
      </body>
    </html>
  `);
});

app.listen(PORT, () => {
  console.log('Frontend running at http://localhost:3000');
});

