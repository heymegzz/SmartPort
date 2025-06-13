INSERT INTO users (name, email) VALUES
('Meghna Nair', 'meghnanair7569@gmail.com'),
('Khrisha Nair', 'krizz66@gmail.com'),
('Nisha Nair', 'nishanair@gmail.com');


INSERT INTO investments (name, type, risk_level) VALUES
('Bitcoin', 'Crypto', 'High'),
('Tesla', 'Stock', 'Medium'),
('SBI Mutual Fund', 'Mutual Fund', 'Low');


INSERT INTO transactions (user_id, investment_id, amount_invested, units_purchased, price_per_unit, transaction_date) VALUES
(1, 1, 10000, 0.25, 40000, '2024-11-15'),
(1, 2, 5000, 2, 2500, '2024-12-20'),
(2, 3, 3000, 150, 20, '2025-01-10'),
(3, 1, 20000, 0.5, 40000, '2025-02-05');
