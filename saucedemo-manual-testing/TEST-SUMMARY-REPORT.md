# Test Summary Report - SauceDemo

## Report Status

**Execution in progress**

Manual execution started on 2026-09-18. The results below include only completed test cases.

## Execution Summary

| Metric | Current Value |
|---|---:|
| Planned test cases | 38 |
| Executed | 15 |
| Passed | 15 |
| Failed | 0 |
| Blocked | 0 |
| Not Run | 23 |
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

## Defect Summary

To be updated after confirmed defects are reproduced and documented.

## Risks and Limitations

- The public demo environment may change without notice.
- Testing is limited to the documented browsers and devices.
- Security, performance, API, and database testing are outside this project's scope.

## Final Assessment

Testing is in progress. No final assessment or release recommendation is available until the remaining test cases are executed.
