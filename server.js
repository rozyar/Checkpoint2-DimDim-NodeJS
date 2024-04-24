const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Implantação efetuada com sucesso. Bom trabalho!');
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Aplicação ouvindo na porta ${port}`);
});