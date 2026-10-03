# Test Summary Report - SauceDemo

## Report Status

**Execution completed**

Manual execution was performed from 2026-09-18 to 2026-10-03. All planned test cases were completed.

## Execution Summary

| Metric | Current Value |
|---|---:|
| Planned test cases | 38 |
| Executed | 38 |
| Passed | 36 |
| Failed | 2 |
| Blocked | 0 |
| Not Run | 0 |
| Reported defects | 2 |
| Confirmed defects | 1 |

## Test Environment

| Item | Value |
|---|---|
| Operating system | Windows 11 |
| Browser and version | Google Chrome (version not recorded) |
| Execution period | 2026-09-18 to 2026-10-03 |
| Application URL | https://www.saucedemo.com/ |
| Tester | Portfolio owner |

## Scope Completed

- Valid login flow completed successfully (TC-001).
- Inventory page and product list were displayed after authentication.
- Invalid username was rejected with a clear error message (TC-002).
- Invalid password was rejected with a clear error message (TC-003).
- Empty login fields triggered the required username validation (TC-004).
- Empty password field triggered the required password validation (TC-005).
- Credentials with leading/trailing spaces were rejected without unintended login (TC-006).
- Locked-out user was denied access with the intended message (TC-007).
- Inventory displayed six product cards with names, images, descriptions, prices, and action buttons (TC-008).
- Product detail page displayed the selected backpack with the matching name, image, description, price, and action button (TC-009).
- Returning from the product detail page opened the inventory page without unexpected state changes (TC-010).
- Product name sorting worked in ascending and descending alphabetical order (TC-011, TC-012).
- Product price sorting worked in ascending and descending numeric order (TC-013, TC-014).
- Adding one product changed its action to Remove and displayed cart badge 1 (TC-015).
- Adding three different products displayed cart badge 3, and all three selected products appeared in the cart (TC-016).
- Removing a selected product from the inventory page changed its action back to Add to cart and reduced the cart badge from 3 to 2 (TC-017).
- Removing a product from the cart page removed the item and reduced the cart badge from 2 to 1 (TC-018).
- The Sauce Labs Bolt T-Shirt name and $15.99 price remained consistent between inventory and cart (TC-019).
- The empty cart page opened successfully without an application error or cart badge (TC-020).
- Continue Shopping returned the user from the cart to inventory while preserving the selected product and cart badge 1 (TC-021).
- Selecting Checkout from the cart opened the Checkout: Your Information page (TC-022).
- Entering valid first name, last name, and postal code opened the Checkout: Overview page (TC-023).
- Submitting empty checkout information displayed the required first-name validation and prevented progression (TC-024).
- Leaving First Name empty while completing Last Name and Postal Code displayed the required first-name validation (TC-025).
- Leaving Last Name empty while completing First Name and Postal Code displayed the required last-name validation (TC-026).
- Leaving Postal Code empty while completing First Name and Last Name displayed the required postal-code validation (TC-027).
- Whitespace-only customer information was accepted and opened Checkout: Overview; TC-028 failed and BUG-001 was confirmed by reproducing the issue twice (2/2).
- Long customer-field values were contained within the form without breaking the layout, and Continue opened Checkout: Overview (TC-029).
- The Sauce Labs Backpack name, quantity 1, and $29.99 price remained consistent between cart and order overview (TC-030).
- The overview calculation was correct: $29.99 item total + $2.40 tax = $32.39 total (TC-031).
- Cancel from Checkout: Your Information returned the user to the cart without an error and preserved the selected item (TC-032).
- Cancel from Checkout: Overview returned the user to inventory without completing the order and preserved the selected Backpack (TC-033).
- Finish after valid checkout opened Checkout: Complete and displayed a successful order confirmation (TC-034).
- The side menu opened with all navigation options, closed through its X control, and left the Products page usable (TC-035).
- Reset App State removed the cart badge but left the two selected product buttons in the **Remove** state instead of restoring **Add to cart**; TC-036 failed and BUG-002 was recorded.
- Logout returned the user to the Login page, and browser Back navigation did not restore authenticated access; direct return to `/inventory.html` was blocked with the intended message (TC-037).
- A new login with valid credentials started a fresh authenticated session and displayed the complete Products page with the initial cart state (TC-038).

## Defect Summary

| Defect | Status | Severity | Summary |
|---|---|---|---|
| BUG-001 | Confirmed — New | Medium | Checkout accepts whitespace-only customer information. |
| BUG-002 | New — retest pending | Medium | Reset App State clears the cart badge but leaves selected products in the Remove state. |

## Risks and Limitations

- The public demo environment may change without notice.
- Testing is limited to the documented browsers and devices.
- Security, performance, API, and database testing are outside this project's scope.

## Final Assessment

All 38 planned manual test cases were executed. The application passed 36 cases and failed 2 cases, resulting in a 94.7% pass rate.

The primary customer journey—login, product browsing, sorting, cart operations, checkout, order completion, logout, and re-login—worked successfully. Two medium-severity defects were recorded: whitespace-only checkout information is accepted, and Reset App State leaves inventory controls inconsistent with the cleared cart badge.

For this demonstration application, the tested core flow is usable. The two recorded defects should be corrected and regression-tested before the affected validation and reset-state behaviours are considered reliable.
