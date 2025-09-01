const express = require('express');
const path = require('path');
const app = express();

const PORT = process.env.PORT || 8080;

// Serve static files from current directory
app.use(express.static(path.join(__dirname)));

// Fallback to index
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'cokie website.html'));
});

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
