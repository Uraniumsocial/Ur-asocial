
const express = require('express');
const cors = require('cors');
const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

app.get('/api/hello', (req, res) => {
  res.send({ message: 'Bienvenue sur UraniumSocial API!' });
});

app.listen(PORT, () => console.log(`Serveur backend actif sur le port ${PORT}`));
