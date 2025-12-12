# Manual Testing – Login Test Cases

**Feature:** Login  
**Type:** Functional / UI  
**Priority:** High

## Preconditions
- User is on the Login page
- Test environment is available

## Test Cases

### TC-LOGIN-001 – Valid login
**Priority:** High  
**Steps:**
1. Enter valid email
2. Enter valid password
3. Click **Login**
**Expected result:**
- User is logged in successfully
- User is redirected to dashboard/home
- Session/token is created

### TC-LOGIN-002 – Invalid password
**Priority:** High  
**Steps:**
1. Enter valid email
2. Enter invalid password
3. Click **Login**
**Expected result:**
- Error message is displayed (e.g., “Invalid credentials”)
- User stays on login page
- No session/token created

### TC-LOGIN-003 – Invalid email format
**Priority:** Medium  
**Steps:**
1. Enter invalid email format (e.g., test@)
2. Enter any password
3. Click **Login**
**Expected result:**
- Validation message is shown (email format)
- Login request is not sent (or is rejected)
- User stays on login page

### TC-LOGIN-004 – Empty fields
**Priority:** High  
**Steps:**
1. Leave email empty
2. Leave password empty
3. Click **Login**
**Expected result:**
- Required field validation messages shown
- No login attempt performed

### TC-LOGIN-005 – Only email entered
**Priority:** Medium  
**Steps:**
1. Enter email
2. Leave password empty
3. Click **Login**
**Expected result:**
- Password required validation is shown

### TC-LOGIN-006 – Only password entered
**Priority:** Medium  
**Steps:**
1. Leave email empty
2. Enter password
3. Click **Login**
**Expected result:**
- Email required validation is shown

### TC-LOGIN-007 – Password masked
**Priority:** Low  
**Steps:**
1. Type password into password field
**Expected result:**
- Characters are masked (•••••)

### TC-LOGIN-008 – Enter key submits form
**Priority:** Low  
**Steps:**
1. Fill valid email and password
2. Press **Enter**
**Expected result:**
- Same behavior as clicking Login (successful login)

