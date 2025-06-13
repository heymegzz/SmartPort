SELECT 
    t.transaction_id,
    u.name AS user_name,
    i.name AS investment_name,
    t.amount_invested,
    t.transaction_date
FROM transactions t
JOIN users u ON t.user_id = u.user_id
JOIN investments i ON t.investment_id = i.investment_id;

SELECT 
    u.name,
    SUM(t.amount_invested) AS total_invested
FROM transactions t
JOIN users u ON t.user_id = u.user_id
GROUP BY u.user_id;


SELECT 
    i.name,
    COUNT(t.transaction_id) AS transaction_count
FROM transactions t
JOIN investments i ON t.investment_id = i.investment_id
GROUP BY i.investment_id
ORDER BY transaction_count DESC
LIMIT 1;


SELECT 
    risk_level,
    COUNT(*) AS total_investments
FROM investments
GROUP BY risk_level;


SELECT 
    t.*,
    u.name AS user_name
FROM transactions t
JOIN users u ON t.user_id = u.user_id
WHERE t.transaction_date >= DATE('now', '-30 days');
