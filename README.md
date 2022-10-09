# Test suites

## The test suites

The folder `test` contains test suites. Each folder must contain the
following files.

* `input.lorg`: contains the Lorg code to test.
* `command`: contains the command to test.
* `expected.txt`: contains the expected result.

The word `lorg` should be the first word contained in `command`. It is replaced
by the command given as argument of `test-one` and `test-all` (see below).

In the `input.lorg` you can write information about the test suite (why this
test suite was created, which issue id it refers...).

If a test suite was created after fixing a bug, the folder name should be
prefixed using the format `bug-ID` (`ID` should be the issue id in the issue
manager).

All folders should be name in lowercase, using alphanumerical characters and
using `-` for separating words. Example: `hello-world`.

## Testing

To automatize the tests, there are two POSIX shell scripts.

* `test-one`: tests only one test suite and displays the difference between the
  expected result (in `expected.txt`) and the actual result.
* `test-all`: tests all the test suites and displays which ones have problem
  without printing the difference. Use `test-one` on the problematic tests for
  more information.

To summarize, launch `./test-all LORG_FILEPATH` to check if everything is fine
and `./test-one LORG_FILEPATH FOLDER_NAME` to have more information about one
test suite.
