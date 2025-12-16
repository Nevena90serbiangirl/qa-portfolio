### Bug ID
BUG-03

### Title
Account is not locked after multiple consecutive failed login attempts

### Environment
- OS: Windows 10
- Browser: Google Chrome (latest)
- Environment: Staging

### Preconditions
- User account exists
- User is on login page

### Steps to Reproduce
1. Open login page
2. Enter valid email address
3. Enter incorrect password
4. Click Login
5. Repeat steps 2–4 more than 5 times

### Expected Result
Account is temporarily locked or warning message is displayed according to security rules.

### Actual Result
System allows unlimited login attempts without any warning or lockout.

### Severity
Critical

### Priority
High

### Notes
This is a security-related issue and may expose the system to brute-force attacks.
