# /test:review-and-correct - Test Suite Review and Correction

## Overview

Creates a comprehensive review and correct document for failing test suites with platform detection and systematic resolution tracking. This command automatically detects the testing platform and framework, analyzes test structure and failures, and generates a detailed sprint document for systematic test resolution. The output includes environment setup, individual test analysis, resolution strategies, and progress tracking checkboxes.

## Usage Examples

### Create review document for Python test
```qwen
/test:review-and-correct @test_authentication.py
```

### Create review document for Node.js test
```qwen
/test:review-and-correct @auth.test.js
```

### Create review document for PHP test
```qwen
/test:review-and-correct @AuthenticationTest.php
```

### Create review document for Java test
```qwen
/test:review-and-correct @UserServiceTest.java
```

## Arguments

- `args`: **Required** - Path to the test file to analyze (must be prefixed with @). The file path should point to the specific test suite that needs review and correction.

## Security Considerations

> **Important:** Test review documents may contain sensitive configuration details, API endpoints, or test data patterns. Review generated documents before sharing and ensure test data doesn't contain production secrets.

The review process includes:
- Automatic platform and framework detection
- Environment setup and dependency analysis
- Individual test case identification and analysis
- Systematic resolution tracking with checkboxes
- Sprint-based planning and progress tracking
- Root cause analysis and lessons learned documentation

## Related Resources

- [/test:coverage](coverage.md) - Analyze overall test coverage
- [/create:sprint](../create/sprint.md) - Create development sprints
- [/analyze:implementation](../analyze/implementation.md) - Analyze code implementation patterns