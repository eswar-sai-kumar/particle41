const express = require('express');
const app = express();

app.get('/', (req, res) => {
  const timestamp = new Date().toISOString();
  const ip = req.headers['x-forwarded-for'] || req.socket.remoteAddress;
  
  res.json({
    timestamp: timestamp,
    ip: ip
  });
});

const PORT = 8080;
app.listen(PORT, () => {
  console.log(`SimpleTimeService running at http://localhost:${PORT}`);
});
