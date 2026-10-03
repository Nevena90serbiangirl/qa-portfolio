# Test Summary Report - SauceDemo

## Report Status

**Execution in progress**

Manual execution started on 2026-09-18. The results below include only completed test cases.

## Execution Summary

| Metric | Current Value |
|---|---:|
| Planned test cases | 38 |
| Executed | 25 |
| Passed | 25 |
| Failed | 0 |
| Blocked | 0 |
| Not Run | 13 |
| Confirmed defects | 0 |

## Test Environment

| Item | Value |
|---|---|
| Operating system | Windows 11 |
| Browser and version | Google Chrome (version not recorded) |
| Execution period | Started 2026-09-18 |
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

## Defect Summary

To be updated after confirmed defects are reproduced and documented.

## Risks and Limitations

- The public demo environment may change without notice.
- Testing is limited to the documented browsers and devices.
- Security, performance, API, and database testing are outside this project's scope.

## Final Assessment

Testing is in progress. No final assessment or release recommendation is available until the remaining test cases are executed.
