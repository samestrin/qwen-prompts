# /analyze:implementation - Feature Implementation Analysis

## Overview

Analyzes whether specific features or patterns are implemented in the codebase. This command provides detailed reports on implementation status, code coverage, dependencies, and usage patterns for any requested feature or functionality.

## Usage Examples

### Check for a specific feature implementation
```qwen
/analyze:implementation Has Stripe payment processing been implemented?
```

### Analyze implementation in specific directories
```qwen
/analyze:implementation In the @api/ and @middleware/ directories, has user authentication been implemented?
```

### Check for design patterns
```qwen
/analyze:implementation Is the Repository pattern implemented for database access?
```

### Verify security features
```qwen
/analyze:implementation Has rate limiting been implemented for API endpoints?
```

## Arguments

- `args`: **Required** - Description of the feature, pattern, or functionality to search for in the codebase

## Security Considerations

> **Note:** This command performs read-only analysis of your codebase and does not modify any files.

The analysis process:
- Automatically detects source directories from package configuration files
- Scans relevant source code files for implementation patterns
- Provides comprehensive coverage analysis including testing and error handling
- Does not execute or modify any code during analysis

## Related Resources

- [/analyze:dependency](dependency.md) - Dependency analysis
- [/analyze:security](security.md) - Security analysis
- [/find:patterns](../find/patterns.md) - Pattern finding utilities