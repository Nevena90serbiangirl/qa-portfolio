# Bug Reports
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


### Bug ID
BUG-02

### Title
No error message displayed for incorrect password during login

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
4. Click Login button

### Expected Result
Clear error message is displayed indicating incorrect credentials.

### Actual Result
Login fails silently without any error message.
User remains on login page.

### Severity
Major

### Priority
Medium

### Notes
Lack of feedback can confuse users and increase support requests.


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




