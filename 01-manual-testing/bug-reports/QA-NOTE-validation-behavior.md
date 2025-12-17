# QA Note – Login Validation Behavior

## Scenario Description
This scenario was tested to verify whether the login button remains disabled
after correcting an invalid email input on the login page.

## Test Result
The issue could not be reproduced.

After correcting the email to a valid format and providing a password,
the login button became enabled and the form could be submitted.

## Conclusion
The system behaved as expected.

This confirms that client-side validation state is properly reset once valid
input is provided.

## Notes
This scenario was intentionally not reported as a bug, as no incorrect system
behavior was observed.

