# /test:coverage - Test Coverage Analysis

## Overview

Analyzes test coverage and quality across the codebase, providing comprehensive insights into testing frameworks, coverage gaps, test quality, and reliability. This command examines test structure, identifies untested functionality, evaluates test reliability patterns, and provides specific recommendations for improving test coverage and quality. The analysis focuses on both quantitative coverage metrics and qualitative test assessment.

## Usage Examples

### General coverage analysis
```qwen
/test:coverage
```

### Analyze specific module coverage
```qwen
/test:coverage For the authentication module
```

### Focus on integration test coverage
```qwen
/test:coverage Focusing on integration and API tests
```

### Evaluate test quality and reliability
```qwen
/test:coverage Focusing on test reliability and flaky test identification
```

## Arguments

- `args`: Optional text to focus the analysis on specific modules, test types (unit, integration, e2e), or quality aspects (reliability, maintainability)

## Security Considerations

> **Important:** Test coverage analysis may reveal security-sensitive areas that lack adequate testing. Ensure critical security functions have comprehensive test coverage before deployment.

The coverage analysis examines:
- Test framework organization and conventions
- Code coverage metrics and gaps
- Critical functionality without tests
- Test quality and maintainability
- Async operation test patterns
- Mock and stub usage patterns
- Error handling test coverage
- Performance and reliability testing gaps

## Related Resources

- [/test:review-and-correct](review-and-correct.md) - Comprehensive test failure analysis
- [/analyze:implementation](../analyze/implementation.md) - Code implementation analysis
- [/code:quality](../code/quality.md) - Overall code quality assessment