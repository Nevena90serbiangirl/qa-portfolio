# Edge Cases – Login Module

This document lists additional edge cases and negative scenarios for the Login feature.
It is used to improve test coverage beyond standard functional test cases.

---

## 1) Input Validation & Formatting

- Email with leading/trailing spaces (e.g., "  user@mail.com  ")
- Password with leading/trailing spaces (e.g., "  Pass123!  ")
- Email with uppercase letters (e.g., "USER@MAIL.COM") – should be handled consistently
- Email with subdomain (e.g., "user@mail.company.com")
- Email with plus sign alias (e.g., "user+qa@mail.com")
- Very long email address (max length boundary)
- Very long password (max length boundary)
- Empty email + filled password
- Filled email + empty password
- Both fields empty
- Invalid email formats:
  - missing "@"
  - missing domain
  - multiple "@"
  - invalid characters

---

## 2) Security & Abuse Scenarios (QA-level)

- Multiple consecutive failed login attempts (brute-force risk)
- No lockout / no warning after multiple failed attempts
- SQL injection-like input in email field (e.g., `' OR '1'='1`)
- Script injection attempt in email field (e.g., `<script>alert(1)</script>`)
- Very fast repeated requests (rate limiting expected)
- Login response reveals too much information:
  - "Email not found" vs "Wrong password" (user enumeration risk)

---

## 3) Session & State Handling

- Refresh page after successful login:
  - user should remain logged in (session persisted) or redirected properly
- Back button after logout:
  - user should not access protected page from browser cache
- Opening login page in multiple tabs:
  - login in one tab should reflect in other tab (consistent session state)
- Session timeout:
  - user gets logged out after inactivity and is redirected to login

---

## 4) Error Handling & User Feedback

- Incorrect password:
  - error message must be visible, clear, and consistent
- Network failure during login (simulate offline / slow connection):
  - proper error message shown, no infinite loading
- Server returns 500:
  - user sees friendly message, no crash
- Validation messages disappear when input becomes valid
- Error message resets after a new login attempt

---

## 5) Usability & Accessibility (basic)

- Tab navigation works (Email → Password → Login button)
- Enter key submits the form (if expected by product behavior)
- Password field masks input by default
- Show/Hide password toggle works correctly (if present)
- Copy/paste into fields works
- Login button disabled until required fields are valid (if implemented)

---

## 6) Compatibility (optional / out of scope unless required)

- Different browsers (Chrome, Firefox, Edge)
- Different screen sizes (desktop vs mobile)
- Localization/language (error messages display correctly)

---

## Notes
- Some items (lockout, rate limiting, enumeration prevention) depend on product requirements.
- If requirements are not specified, log findings as potential risks and clarify with the team.
