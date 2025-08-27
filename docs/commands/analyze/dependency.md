# /analyze:dependency - Project Dependency Analysis

## Overview

Performs comprehensive analysis of project dependencies across multiple package managers. This command automatically detects dependency files in your project and analyzes dependency usage, security vulnerabilities, version conflicts, and optimization opportunities.

## Usage Examples

### Basic dependency analysis
```qwen
/analyze:dependency
```

### Analysis focusing on specific package manager
```qwen
/analyze:dependency Focusing on npm dependencies
```

### Security-focused dependency review
```qwen
/analyze:dependency Focusing on security vulnerabilities and outdated packages
```

## Arguments

- `args`: Optional text to focus the analysis on specific aspects like security, performance, or specific package managers

## Security Considerations

> **Warning:** This command uses shell script execution to detect dependency files. The script only reads existing dependency files and does not modify or execute any external code.

The dependency file detection uses a safe approach that:
- Only checks for existence of common dependency files
- Does not execute any package manager commands
- Does not modify or install dependencies
- Provides read-only analysis of existing dependency configurations

## Related Resources

- [/analyze:security](security.md) - Security-focused code analysis
- [/analyze:vulnerabilities](vulnerabilities.md) - Vulnerability scanning
- [/test:coverage](../test/coverage.md) - Test coverage analysis