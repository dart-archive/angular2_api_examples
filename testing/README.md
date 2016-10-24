An example of using the new `NgTestBed` API with AoT-enabled!

![demo3](https://cloud.githubusercontent.com/assets/168174/19536743/156845e4-9602-11e6-9f39-b682176b370b.gif)

To run, simply use `pub`:

```bash
$ pub serve
```

In Chrome or Dartium, open up `http://localhost:8080`

You'll see the Angular Dart github issues displayed in a table like you see above.

To run the automated tests, open up:

1. `http://localhost:8081/issue_body_test.dart`
2. `http://localhost:8081/issue_list_test.dart`

The first test is a simple "do we parse the markdown", test.

The second test is an e2e-style test that uses [pageloader][pageloader].

[pageloader]: https://github.com/google/pageloader

## Automated testing

Our test package supports running these tests too!

In a terminal, first start `pub serve` (so we serve the AoT-compiled code):

```bash
# Just serve the `test` folder.
$ pub serve test
```

Then, while running, start `pub run test`:

```bash
$ pub run test -p content-shell --pub-serve=8080    
> 00:07 +2: All tests passed!
```
