# /code:review - Comprehensive Code Review

## Overview

Performs comprehensive code review analyzing quality, security, performance, and best practices compliance. This command provides structured feedback organized by severity level with specific file references and actionable solutions for improving code quality, security, and maintainability.

## Usage Examples

### Review entire codebase
```qwen
/code:review
```

### Review specific files or directories
```qwen
/code:review @src/auth/ @src/api/
```

### Focus on specific aspects
```qwen
/code:review Focusing on security vulnerabilities and performance issues
```

### Architecture-focused review
```qwen
/code:review Focusing on SOLID principles and architectural patterns
```

## Arguments

- `args`: Optional text to focus the review on specific aspects like security, performance, architecture, or specific files/directories

## Security Considerations

> **Important:** This command performs comprehensive security analysis and may identify critical security vulnerabilities. Review the output carefully and prioritize security findings appropriately.

The code review analyzes:
- **Security:** Input validation, authentication, authorization, data handling
- **Performance:** Database queries, memory usage, algorithm efficiency
- **Code Quality:** Structure, naming, complexity, DRY/SOLID principles
- **Best Practices:** Error handling, testing, documentation, configuration
- **Maintainability:** Readability, technical debt, scalability concerns
- **Language/Framework Compliance:** Proper idiom usage and conventions

Results are structured by severity (Critical → High → Medium → Low) with specific file references and actionable solutions.

## Related Resources

- [/code:analysis](analysis.md) - Comprehensive codebase analysis
- [/code:quality](quality.md) - Code quality metrics and assessment
- [/analyze:security](../analyze/security.md) - Security-focused analysis