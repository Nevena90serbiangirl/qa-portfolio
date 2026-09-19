# Manual Test Cases - SauceDemo

## Test Data

- Valid username: `standard_user`
- Locked username: `locked_out_user`
- Password: `secret_sauce`
- Valid checkout data: Test / User / 11000

## Login

| ID | Test Case and Steps | Expected Result | Priority | Status |
|---|---|---|---|---|
| TC-001 | Open the application, enter valid credentials, select **Login**. | Inventory page opens and products are visible. | High | **Passed** — [Evidence](evidence/TC-001-login-success.png) |
| TC-002 | Enter an invalid username with the valid password and select **Login**. | Login is rejected and a clear error is displayed. | High | **Passed** — [Evidence](evidence/TC-002-invalid-username.png) |
| TC-003 | Enter the valid username with an invalid password and select **Login**. | Login is rejected and a clear error is displayed. | High | **Passed** — [Evidence](evidence/TC-003-invalid-password.png) |
| TC-004 | Leave both fields empty and select **Login**. | Required username validation is displayed. | High | **Passed** — [Evidence](evidence/TC-004-empty-fields.png) |
| TC-005 | Enter a username, leave password empty, and select **Login**. | Required password validation is displayed. | High | **Passed** — [Evidence](evidence/TC-005-empty-password.png) |
| TC-006 | Enter leading/trailing spaces around valid credentials and submit. | Behaviour is consistent and does not create an unintended login. | Medium | **Passed** — [Evidence](evidence/TC-006-credentials-with-spaces.png) |
| TC-007 | Log in with `locked_out_user`. | Access is rejected with the intended locked-user message. | Medium | **Passed** — [Evidence](evidence/TC-007-locked-out-user.png) |

## Product Inventory

| ID | Test Case and Steps | Expected Result | Priority | Status |
|---|---|---|---|---|
| TC-008 | Log in and review the inventory page. | Product cards show name, image, description, price, and action button. | High | Not Run |
| TC-009 | Select a product name or image. | Correct product detail page opens. | Medium | Not Run |
| TC-010 | Return from a product detail page. | Inventory page opens without unexpected state changes. | Medium | Not Run |
| TC-011 | Sort products **Name (A to Z)**. | Product names are displayed in ascending alphabetical order. | Medium | Not Run |
| TC-012 | Sort products **Name (Z to A)**. | Product names are displayed in descending alphabetical order. | Medium | Not Run |
| TC-013 | Sort products **Price (low to high)**. | Prices are displayed in ascending numeric order. | Medium | Not Run |
| TC-014 | Sort products **Price (high to low)**. | Prices are displayed in descending numeric order. | Medium | Not Run |

## Shopping Cart

| ID | Test Case and Steps | Expected Result | Priority | Status |
|---|---|---|---|---|
| TC-015 | Add one product from the inventory page. | Button changes to Remove and cart badge shows 1. | High | Not Run |
| TC-016 | Add three different products. | Cart badge shows 3 and all selected products appear in the cart. | High | Not Run |
| TC-017 | Remove a selected product from the inventory page. | Product is removed and the badge count decreases correctly. | High | Not Run |
| TC-018 | Remove a product from the cart page. | Product disappears and the badge count updates correctly. | High | Not Run |
| TC-019 | Compare product name and price between inventory and cart. | Name and price remain consistent. | High | Not Run |
| TC-020 | Open the cart with no products selected. | Empty cart page opens without an application error. | Medium | Not Run |
| TC-021 | Add a product, open the cart, select **Continue Shopping**. | Inventory page opens and the cart state is preserved. | Medium | Not Run |
| TC-022 | Add a product, open the cart, select **Checkout**. | Checkout information page opens. | High | Not Run |

## Checkout

| ID | Test Case and Steps | Expected Result | Priority | Status |
|---|---|---|---|---|
| TC-023 | Complete first name, last name, and postal code with valid data. | Order overview page opens. | High | Not Run |
| TC-024 | Leave all checkout information fields empty and continue. | Required first-name validation is displayed. | High | Not Run |
| TC-025 | Leave first name empty and complete the other fields. | Required first-name validation is displayed. | High | Not Run |
| TC-026 | Leave last name empty and complete the other fields. | Required last-name validation is displayed. | High | Not Run |
| TC-027 | Leave postal code empty and complete the other fields. | Required postal-code validation is displayed. | High | Not Run |
| TC-028 | Enter only spaces in checkout fields and continue. | Blank-equivalent data is rejected or clearly handled. | Medium | Not Run |
| TC-029 | Enter long text in customer fields and continue. | Page remains usable and input is handled without broken layout. | Low | Not Run |
| TC-030 | Compare cart items with order overview items. | Products, quantities, and individual prices remain consistent. | High | Not Run |
| TC-031 | Verify item total, tax, and total on the overview page. | Displayed values are mathematically consistent. | High | Not Run |
| TC-032 | Select **Cancel** from checkout information. | User returns to the cart without an unexpected error. | Medium | Not Run |
| TC-033 | Select **Cancel** from order overview. | User returns to inventory and no order is completed. | Medium | Not Run |
| TC-034 | Select **Finish** after a valid checkout. | Confirmation page appears and indicates successful completion. | High | Not Run |

## Navigation and Session

| ID | Test Case and Steps | Expected Result | Priority | Status |
|---|---|---|---|---|
| TC-035 | Open and close the side menu. | Menu controls work and page content remains usable. | Medium | Not Run |
| TC-036 | Select **Reset App State** after adding products. | Cart and product selection return to the intended initial state. | Medium | Not Run |
| TC-037 | Select **Logout** from the menu. | Login page opens and authenticated content is no longer available through normal navigation. | High | Not Run |
| TC-038 | Log out and then log in again with valid credentials. | A new authenticated session starts without an unexpected error. | Medium | Not Run |

## Result Definitions

- **Passed**: Actual result matches the expected result.
- **Failed**: Actual result differs from the expected result and is reproducible.
- **Blocked**: The case cannot be completed because of an external condition.
- **Not Run**: The case has not yet been executed.
