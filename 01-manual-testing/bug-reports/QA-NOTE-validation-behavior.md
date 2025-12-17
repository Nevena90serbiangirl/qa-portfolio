# QA Note – Login Validation Behavior

## Scenario
This scenario was tested to verify whether the login button remains disabled
after correcting an invalid email input on the login page.

## Test Outcome
The issue could not be reproduced.

After correcting the email to a valid format and providing a password,
the login button became enabled and the form could be submitted successfully.

## Conclusion
The system behaved as expected.

This confirms that client-side validation state is properly reset once valid
input is provided.

## QA Decision
This scenario was not reported as a bug since no incorrect system behavior
was observed.


