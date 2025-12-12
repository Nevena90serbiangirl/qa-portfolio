# Bug Reports

## BUG-LOGIN-001 – Login button allows submit with empty fields
**Severity:** Major  
**Priority:** High  
**Environment:** Web / Chrome (add version)  
**Preconditions:** User is on Login page

**Steps to reproduce:**
1. Open Login page
2. Leave Email empty
3. Leave Password empty
4. Click **Login**

**Actual result:**
- Form submits / request is sent (or no validation shown)

**Expected result:**
- Validation messages shown for required fields
- No request sent

**Attachments:**
- Screenshot / video
- Console logs (if relevant)

---

## BUG-LOGIN-002 – Error message is unclear for invalid credentials
**Severity:** Minor  
**Priority:** Medium  
**Environment:** Web / Chrome (add version)

**Steps to reproduce:**
1. Enter valid email
2. Enter invalid password
3. Click **Login**

**Actual result:**
- Generic error (e.g., “Something went wrong”)

**Expected result:**
- Clear message (e.g., “Invalid email or password”)

