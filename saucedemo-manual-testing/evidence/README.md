# Test Evidence

Screenshots are added during manual execution and linked to the corresponding test cases.

## Recorded Evidence

| Test Case | Result | Date | Evidence |
|---|---|---|---|
| TC-001 — Successful login | Passed | 2026-09-18 | [View screenshot](TC-001-login-success.png) |
| TC-002 — Invalid username | Passed | 2026-09-18 | [View screenshot](TC-002-invalid-username.png) |
| TC-003 — Invalid password | Passed | 2026-09-18 | [View screenshot](TC-003-invalid-password.png) |
| TC-004 — Empty login fields | Passed | 2026-09-18 | [View screenshot](TC-004-empty-fields.png) |
| TC-005 — Empty password | Passed | 2026-09-18 | [View screenshot](TC-005-empty-password.png) |
| TC-006 — Credentials with spaces | Passed | 2026-09-19 | [View screenshot](TC-006-credentials-with-spaces.png) |
| TC-007 — Locked-out user | Passed | 2026-09-19 | [View screenshot](TC-007-locked-out-user.png) |
| TC-008 — Product cards | Passed | 2026-09-19 | [View screenshot](TC-008-product-cards.png) |
| TC-009 — Product detail | Passed | 2026-09-19 | [View screenshot](TC-009-product-detail.png) |
| TC-010 — Return to products | Passed | 2026-09-19 | [View screenshot](TC-010-return-to-products.png) |
| TC-011 — Name A to Z | Passed | 2026-09-19 | [View screenshot](TC-011-name-a-to-z.png) |
| TC-012 — Name Z to A | Passed | 2026-09-19 | [View screenshot](TC-012-name-z-to-a.png) |
| TC-013 — Price low to high | Passed | 2026-09-19 | [View screenshot](TC-013-price-low-to-high.png) |
| TC-014 — Price high to low | Passed | 2026-09-19 | [View screenshot](TC-014-price-high-to-low.png) |
| TC-015 — Add one product | Passed | 2026-09-19 | [View screenshot](TC-015-add-one-product.png) |

## Naming Convention

- Passed flow: `TC-001-login-success.png`
- Failed test or bug: `BUG-001-short-description.png`
- Additional evidence: `BUG-001-step-03.png`

## Screenshot Requirements

Each screenshot should:

- Show the relevant application state clearly.
- Include the visible error or incorrect result.
- Avoid unrelated personal information.
- Use the matching test case or bug ID.
- Be referenced from the related test case or bug report.

## Suggested Evidence Groups

- `login`
- `products`
- `cart`
- `checkout`
- `bugs`

GitHub does not store empty folders, so folders will appear when the first screenshot is uploaded.
