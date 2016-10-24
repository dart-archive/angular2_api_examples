@TestOn('browser')
library angular2_simple_test;

// Replaced with code generation.
import 'package:angular2/src/core/reflection/reflection.dart';
import 'package:angular2/src/core/reflection/reflection_capabilities.dart';

// Experimental. Will be published under package:angular2/testing.dart soon.
import 'package:angular2/src/modules/testing/lib/testing.dart';

import 'package:angular2_api_examples.testing/api.dart';
import 'package:angular2_api_examples.testing/ui.dart';
import 'package:test/test.dart';

void main() {
  reflector.reflectionCapabilities = new ReflectionCapabilities();

  tearDown(() => disposeAnyRunningTest());

  group('$IssueBodyComponent', () {
    test('should properly render markdown', () async {
      var testBed = new NgTestBed<IssueBodyComponent>();
      var fixture = await testBed.create(onLoad: (c) {
        c.issue = new GithubIssue(
          description: '**Hello World**',
        );
      });
      expect(fixture.element.innerHtml, contains('<strong>Hello World</strong>'));
    });
  });
}
