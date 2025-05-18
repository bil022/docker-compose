const express = require('express');
const cors = require('cors');
const app = express();
const PORT = 4000;

app.use(cors()); // <-- Allow all origins by default

app.get('/data', (req, res) => {
  res.json({ message: 'CORS is fixed!' });
});

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});

