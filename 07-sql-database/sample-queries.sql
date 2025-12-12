-- Verify user was created
SELECT * FROM users WHERE email = 'test@example.com';

-- Verify login attempt was saved
SELECT * FROM login_logs WHERE user_id = 10;

-- Update test data
UPDATE users SET status = 'inactive' WHERE id = 5;
