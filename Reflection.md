# Reflection

## What I learned about GOTO

A GOTO jumps to a label written as `<<label>>`. In A1 and A2 I used it to jump to the right section depending on a condition, and I needed `GOTO finish` so the code didn't fall through into the next label. In A3 I learned that PL/SQL lets you jump out of a block but never into one, so jumping into an IF block gives error PLS-00375. I fixed it by moving the label to the same block level as the GOTO.

## What I learned about functions

A stored function returns a value and can be reused. I wrote functions for annual salary, years of service, tax, department name and payroll validation. In B5 I called them inside a SELECT, just like built-in functions.

## Exception handling

I used exception handling so the code handles bad input instead of crashing. B1 and B2 return NULL for a missing employee, B4 returns "Unknown Department", B3 raises an error for a negative salary, and C1 returns a clear INVALID message for each problem.

## GOTO vs. structured code

A2 uses GOTO and A4 does the same job with IF/ELSIF/ELSE. A4 is shorter and easier to read because you follow the code from top to bottom without jumping around. GOTO makes larger programs harder to maintain, so I would use IF/ELSIF instead in real code.

## Challenges

### Managing GOTO control flow
Ensuring the program did not "fall through" into unintended labels required adding an explicit `GOTO` skip jump at the end of every block, so only the matching section ran.

### Resolving PLS-00375 in Task A3
It took careful debugging to realize that Oracle does not allow jumping into a nested block or a conditional structure from the outside. I fixed it by placing the label at the same block level as the `GOTO`.

### Handling missing data gracefully
In stored functions, queries that returned zero rows needed explicit exception handling (`WHEN NO_DATA_FOUND`) so the function returned a clean default value instead of breaking the execution.
