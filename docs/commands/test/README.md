# Test Commands

Comprehensive testing analysis and quality assurance tools for evaluating test coverage, identifying testing gaps, and improving overall test quality. These commands help maintain robust testing practices and ensure code reliability.

## Commands Overview

### 📊 [coverage](coverage.md) - Test Coverage Analysis
Analyzes test coverage and quality across the codebase, identifying missing test areas, evaluating test effectiveness, and providing recommendations for improving test coverage.

**Common Use Cases:**
- Test coverage assessment and gap identification
- Test quality evaluation and improvement planning
- Critical functionality testing verification
- Testing strategy development and optimization
- Test suite maintenance and enhancement

### [review-and-correct](review-and-correct.md) - Test Review and Correction
Comprehensive test review focusing on identifying issues, improving test quality, and ensuring test reliability and maintainability.

**Common Use Cases:**
- Test code quality review and improvement
- Test reliability and flakiness identification
- Test maintainability assessment and enhancement
- Test best practices compliance verification
- Test suite optimization and refactoring

## Testing Analysis Workflows

### Comprehensive Test Assessment
```
qwen
```

```qwen
# 1. Analyze current test coverage
> /test:coverage
> /file:save @test-coverage-analysis.md

# 2. Review and identify test improvements
> /test:review-and-correct
> /file:save @test-improvements-review.md

# 3. Analyze codebase for testing opportunities
> /code:analysis focusing on testability and testing architecture
> /file:save @testability-analysis.md

# 4. Merge test components into comprehensive assessment
> /file:merge @test-coverage-analysis.md @test-improvements-review.md @testability-analysis.md into @comprehensive-test-assessment.md, then delete the source files that were merged
```

### Test Quality Improvement
```
qwen
```

```qwen
# 1. Evaluate current test quality and coverage
> /test:coverage focusing on critical business logic and edge cases
> /file:save @test-quality-coverage-evaluation.md

# 2. Identify specific test improvements needed
> /test:review-and-correct focusing on test reliability and maintainability
> /file:save @test-improvements-needed.md

# 3. Find testing patterns and anti-patterns
> /find:patterns Find testing patterns, mocking issues, and test organization problems
> /file:save @testing-patterns-analysis.md

# 4. Merge quality components into improvement plan
> /file:merge @test-quality-coverage-evaluation.md @test-improvements-needed.md @testing-patterns-analysis.md into @test-quality-improvement-plan.md, then delete the source files that were merged
```

### Security Testing Analysis
```
qwen
```

```qwen
# 1. Analyze test coverage for security features
> /test:coverage for authentication, authorization, and data validation modules
> /file:save @security-test-coverage.md

# 2. Review security test effectiveness
> /test:review-and-correct focusing on security test cases and vulnerability testing
> /file:save @security-test-effectiveness.md

# 3. Perform security analysis to identify untested areas
> /analyze:security focusing on areas lacking security test coverage
> /file:save @security-untested-areas.md

# 4. Merge security testing components into comprehensive analysis
> /file:merge @security-test-coverage.md @security-test-effectiveness.md @security-untested-areas.md into @security-testing-analysis.md, then delete the source files that were merged
```

### Performance Testing Assessment
```
qwen
```

```qwen
# 1. Analyze test coverage for performance-critical components
> /test:coverage for database queries, API endpoints, and computational algorithms
> /file:save @performance-test-coverage.md

# 2. Review performance test quality and effectiveness
> /test:review-and-correct focusing on performance testing and load testing strategies
> /file:save @performance-test-quality.md

# 3. Identify performance bottlenecks that need testing
> /analyze:performance focusing on areas requiring performance test coverage
> /file:save @performance-bottlenecks-testing.md

# 4. Merge performance testing components into comprehensive strategy
> /file:merge @performance-test-coverage.md @performance-test-quality.md @performance-bottlenecks-testing.md into @performance-testing-strategy.md, then delete the source files that were merged
```

### Test-Driven Development Support
```
qwen
```

```qwen
# 1. Analyze current testing practices and coverage
> /test:coverage
> /file:save @current-testing-practices.md

# 2. Create TDD-focused development plan
> /create:tdd based on current test coverage analysis and improvement needs
> /file:save @tdd-development-plan.md

# 3. Review test structure for TDD compliance
> /test:review-and-correct focusing on test structure, organization, and TDD best practices
> /file:save @tdd-compliance-review.md

# 4. Merge TDD components into comprehensive implementation plan
> /file:merge @current-testing-practices.md @tdd-development-plan.md @tdd-compliance-review.md into @tdd-implementation-plan.md, then delete the source files that were merged
```

## Command Relationships

### Quality Assurance Integration
- **Code Quality**: Complement [code:quality](../code/quality.md) with test quality analysis
- **Code Review**: Support [code:review](../code/review.md) with testing perspective
- **Architecture**: Inform [code:analysis](../code/analysis.md) with testability assessment

### Security and Performance
- **Security Testing**: Integrate with [analyze:security](../analyze/security.md) for comprehensive security assessment
- **Performance Testing**: Support [analyze:performance](../analyze/performance.md) with performance test analysis
- **Vulnerability Testing**: Complement [analyze:vulnerabilities](../analyze/vulnerabilities.md) with test coverage

### Development Workflow
- **TDD Planning**: Support [create:tdd](../create/tdd.md) with test analysis insights
- **Sprint Planning**: Inform [create:sprint](../create/sprint.md) with testing requirements
- **Strategic Planning**: Guide [strategy:plan](../strategy/plan.md) with testing considerations

## Tips and Best Practices

### Test Coverage Analysis
- Focus on critical business logic and high-risk components first
- Consider both quantitative coverage metrics and qualitative test effectiveness
- Identify edge cases and error conditions that need better test coverage
- Balance between comprehensive testing and maintenance overhead

### Test Quality Assessment
- Evaluate test readability, maintainability, and reliability
- Identify flaky tests and improve test stability
- Assess test isolation and independence
- Review test performance and execution efficiency

### Testing Strategy
- Prioritize testing efforts based on risk and business impact
- Plan for different types of testing (unit, integration, end-to-end)
- Consider testing pyramid principles and testing strategy balance
- Include testing in architectural and design decisions

### Test Maintenance
- Regular review and refactoring of test code for quality
- Keep tests up-to-date with code changes and requirements
- Remove obsolete tests and add tests for new functionality
- Monitor test execution performance and optimize as needed

### Best Practices Implementation
- Follow testing best practices for naming, organization, and structure
- Use appropriate testing patterns and frameworks for the technology stack
- Implement proper mocking and test data management strategies
- Establish testing standards and guidelines for team consistency

## Related Resources

- **[Code Quality Commands](../code/)** - Code analysis to support testability assessment
- **[Analysis Commands](../analyze/)** - Comprehensive analysis for test planning
- **[Creation Commands](../create/)** - TDD and testing-focused development planning
- **[Strategy Commands](../strategy/)** - Strategic testing and quality assurance planning

---

**Navigation**: [← Strategy Commands](../strategy/) • [All Commands ↑](../)