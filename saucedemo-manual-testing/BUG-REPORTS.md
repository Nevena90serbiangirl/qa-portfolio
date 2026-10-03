# Bug Reports - SauceDemo

## Current Status

One defect candidate has been recorded during manual execution. BUG-001 was observed once and requires a second execution to confirm reproducibility.

The application contains test accounts that intentionally simulate special behaviour. Intended behaviour must not be reported as a defect.

## BUG-001 - Checkout accepts whitespace-only customer information

| Field | Value |
|---|---|
| Status | New — reproduction confirmation pending |
| Severity | Medium |
| Priority | Medium |
| Environment | Windows 11, Google Chrome (version not recorded) |
| Module | Checkout |
| Reproducibility | Observed once |
| Test Case | TC-028 |
| Evidence | [Screenshot](evidence/TC-028-whitespace-only-fields.png) |

**Preconditions**

1. The user is logged in with `standard_user`.
2. At least one product is present in the cart.
3. The Checkout: Your Information page is open.

**Steps to Reproduce**

1. Enter three space characters in First Name.
2. Enter three space characters in Last Name.
3. Enter three space characters in Zip/Postal Code.
4. Select **Continue**.

**Expected Result**

Whitespace-only values are treated as empty. The application remains on the information page and displays a required-field validation message.

**Actual Result**

The whitespace-only values are accepted and the application opens the Checkout: Overview page.

**Additional Notes**

Observed on 2026-10-03. Repeat the same steps in the current environment to confirm reproducibility; cross-browser verification can be performed later.

## Bug Report Template

### BUG-XXX - Concise problem statement

| Field | Value |
|---|---|
| Status | New |
| Severity | Critical / High / Medium / Low |
| Priority | High / Medium / Low |
| Environment | OS, browser, browser version |
| Module | Login / Products / Cart / Checkout / Navigation |
| Reproducibility | Always / Intermittent / Once |
| Test Case | TC-XXX |
| Evidence | [Screenshot](evidence/filename.png) |

**Preconditions**

1. State the required application and account state.

**Steps to Reproduce**

1. Open the application.
2. Complete the exact actions.
3. Record all required test data.

**Expected Result**

Describe the correct and observable behaviour.

**Actual Result**

Describe what actually happened without assumptions.

**Additional Notes**

Include frequency, workarounds, console observations only when relevant, and whether the issue reproduces in another browser.

## Severity Guide

- **Critical**: Core application or purchase flow is unusable with no workaround.
- **High**: Major function fails or data is materially incorrect.
- **Medium**: Function is impaired but a workaround exists.
- **Low**: Minor UI, content, or usability issue with limited impact.
