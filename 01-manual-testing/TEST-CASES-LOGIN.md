# Manual Testing – Login Test Cases
TC-LOGIN-01

Title: Successful login with valid credentials
Priority: High

Steps:

Open login page

Enter valid email

Enter valid password

Click Login button

Expected Result:
User is successfully logged in and redirected to the dashboard.

TC-LOGIN-02

Title: Login attempt with invalid password
Priority: High

Steps:

Open login page

Enter valid email

Enter invalid password

Click Login

Expected Result:
Error message is displayed indicating incorrect credentials. User remains on login page.

TC-LOGIN-03

Title: Login attempt with non-existing email
Priority: High

Steps:

Open login page

Enter non-registered email

Enter any password

Click Login

Expected Result:
Error message is displayed. Login is not successful.

TC-LOGIN-04

Title: Login with empty email field
Priority: Medium

Steps:

Open login page

Leave email field empty

Enter valid password

Click Login

Expected Result:
Validation message is displayed indicating email is required.

TC-LOGIN-05

Title: Login with empty password field
Priority: Medium

Steps:

Open login page

Enter valid email

Leave password field empty

Click Login

Expected Result:
Validation message is displayed indicating password is required.

TC-LOGIN-06

Title: Login with both fields empty
Priority: Medium

Steps:

Open login page

Leave email field empty

Leave password field empty

Click Login

Expected Result:
Validation messages are displayed for both email and password fields.

TC-LOGIN-07

Title: Login with invalid email format
Priority: Medium

Steps:

Open login page

Enter email without “@” symbol

Enter valid password

Click Login

Expected Result:
Validation message is displayed indicating invalid email format.

TC-LOGIN-08

Title: Login with password containing special characters
Priority: Medium

Steps:

Open login page

Enter valid email

Enter password containing special characters (!@#$)

Click Login

Expected Result:
System processes input correctly and logs in user if credentials are valid.

TC-LOGIN-09

Title: Multiple failed login attempts
Priority: High

Steps:

Open login page

Enter valid email

Enter invalid password

Click Login

Repeat steps 2–4 five times

Expected Result:
Account is temporarily locked or warning message is displayed according to system rules.

TC-LOGIN-10

Title: Login button disabled when mandatory fields are empty
Priority: Low

Steps:

Open login page

Leave email and password fields empty

Expected Result:
Login button is disabled or system prevents login attempt.

