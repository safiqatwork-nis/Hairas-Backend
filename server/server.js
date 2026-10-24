require('dotenv').config();
const express = require('express');
const cors = require('cors');
const path = require('path');
const productRoutes = require('./routes/productRoutes');
const frontendPath = path.resolve(__dirname, '../../HairasTissuePaperProducts/public');

const app = express();
app.use(cors());
app.use(express.json());
app.use('/api/products', productRoutes);
// The frontend is deliberately kept in its own sibling project folder.
app.use(express.static(frontendPath));
app.get('*', (_req, res) => res.sendFile(path.join(frontendPath, 'index.html')));
app.listen(process.env.PORT || 3000, () => console.log(`Hairas is running on port ${process.env.PORT || 3000}`));
