# Bug Reports - SauceDemo

## Current Status

Two defects have been recorded during manual execution. BUG-001 was reproduced twice using the same steps (2/2). BUG-002 was observed in one execution (1/1) and is awaiting an independent retest.

The application contains test accounts that intentionally simulate special behaviour. Intended behaviour must not be reported as a defect.

## BUG-001 - Checkout accepts whitespace-only customer information

| Field | Value |
|---|---|
| Status | Confirmed — New |
| Severity | Medium |
| Priority | Medium |
| Environment | Windows 11, Google Chrome (version not recorded) |
| Module | Checkout |
| Reproducibility | Always — 2/2 executions |
| Test Case | TC-028 |
| Evidence | [Initial result](evidence/TC-028-whitespace-only-fields.png) · [Retest input](evidence/BUG-001-retest-before.png) · [Retest result](evidence/BUG-001-retest-after.png) |

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

Observed and reproduced on 2026-10-03 in the same environment. The issue occurred in 2 of 2 executions. Cross-browser verification can be performed later.

## BUG-002 - Reset App State leaves selected products in the Remove state

| Field | Value |
|---|---|
| Status | New — retest pending |
| Severity | Medium |
| Priority | Medium |
| Environment | Windows 11, Google Chrome (version not recorded) |
| Module | Navigation / Shopping Cart |
| Reproducibility | Observed once — 1/1 execution |
| Test Case | TC-036 |
| Evidence | [Before reset](evidence/TC-036-before-reset.png) · [Reset option](evidence/TC-036-reset-option.png) · [After reset](evidence/TC-036-after-reset.png) |

**Preconditions**

1. The user is logged in with `standard_user`.
2. Sauce Labs Backpack and Sauce Labs Bike Light have been added from the inventory page.
3. The cart badge shows 2 and both product buttons show **Remove**.

**Steps to Reproduce**

1. Open the side menu.
2. Select **Reset App State**.
3. Close the side menu.
4. Review the cart badge and the two previously selected product cards.

**Expected Result**

The cart badge disappears and all previously selected product actions return to **Add to cart**, leaving the application in its initial state.

**Actual Result**

The cart badge disappears, but Sauce Labs Backpack and Sauce Labs Bike Light still display **Remove**. The cart state and the inventory controls are inconsistent.

**Additional Notes**

Observed on 2026-10-03. Refreshing or navigating away may provide a workaround, but an independent retest is required before the defect is marked confirmed.

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
