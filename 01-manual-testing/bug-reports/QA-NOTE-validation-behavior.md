### Bug ID
BUG-01

### Title
Login button remains disabled when password contains special characters

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
3. Enter valid password containing special characters (e.g. P@ssw0rd!)
4. Observe the Login button state

### Expected Result
Login button becomes enabled and user can submit login form.

### Actual Result
Login button remains disabled and login cannot be submitted.

### Severity
Major

### Priority
High

### Notes
This issue blocks users with valid passwords from logging in.
