const pool = require('../config/database');

exports.getProducts = async (_req, res) => {
  try {
    const [products] = await pool.query('SELECT id, name, category, price, rating, image, description FROM products ORDER BY id');
    res.json(products);
  } catch (error) {
    res.status(500).json({ message: 'Unable to load products.', error: error.message });
  }
};
