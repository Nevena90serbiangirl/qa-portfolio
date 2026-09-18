# Test Plan - SauceDemo

## 1. Purpose

The purpose of this test plan is to define the scope, approach, resources, evidence, and completion criteria for manual testing of the SauceDemo web application.

## 2. Objectives

- Verify that the main customer journey works correctly.
- Validate error handling for invalid and incomplete input.
- Check consistency of product, cart, and checkout data.
- Identify reproducible functional, UI, and usability issues.
- Produce clear test evidence and a final test summary.

## 3. In Scope

- Login
- Product inventory and details
- Product sorting
- Add/remove cart actions
- Cart data persistence
- Checkout information validation
- Order overview and completion
- Navigation, logout, and basic session behaviour
- Basic responsive and usability checks

## 4. Out of Scope

- API testing
- Test automation
- Performance and load testing
- Security penetration testing
- Database validation
- Payment-provider integration
- Source-code review

## 5. Test Types

- Functional testing
- Exploratory testing
- Positive and negative testing
- Boundary-value testing
- UI and usability review
- Regression testing

## 6. Test Environment

| Item | Value |
|---|---|
| Operating system | Windows 10/11 |
| Primary browser | Google Chrome |
| Secondary browser | Microsoft Edge, if available |
| Device | Laptop/Desktop |
| Application URL | https://www.saucedemo.com/ |
| Test account | standard_user |
| Password | secret_sauce |
| Execution date | To be recorded |
| Browser version | To be recorded |

## 7. Entry Criteria

- Application is available.
- Test account can be used.
- Test cases have been reviewed.
- Screenshot capture is available.
- Browser version and execution date are recorded.

## 8. Exit Criteria

- All planned high-priority test cases have been executed.
- Failed and blocked tests are documented.
- Confirmed defects contain reproducible steps and evidence.
- Test Summary Report is completed.
- No test is marked Passed without execution.

## 9. Defect Reporting

Each confirmed defect must include:

- Unique ID and concise title
- Environment
- Preconditions
- Reproduction steps
- Expected result
- Actual result
- Severity and priority
- Reproducibility
- Screenshot or other evidence

## 10. Risks

- The public demo environment may change without notice.
- Some accounts intentionally simulate special behaviour and must not automatically be treated as defects.
- Lack of written product requirements may require clearly stated assumptions.
- A temporary service interruption may block execution.

## 11. Deliverables

- Test Plan
- Test Scenarios
- Manual Test Cases
- Bug Reports
- Screenshots
- Test Summary Report
