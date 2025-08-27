# /find:patterns - Code Pattern Discovery

## Overview

Finds specific coding patterns, anti-patterns, or code smells throughout the codebase. This command automatically detects source directories and searches for requested patterns, providing detailed analysis of pattern usage, locations, and potential improvements.

## Usage Examples

### Find React patterns
```qwen
/find:patterns Find all instances of React hooks usage in the @src/ directory
```

### Find error handling patterns
```qwen
/find:patterns Find all instances of async/await error handling in the @api/v1/ directory
```

### Find security patterns
```qwen
/find:patterns Find instances of input validation patterns throughout the codebase
```

### Find anti-patterns
```qwen
/find:patterns Find code smells and anti-patterns like nested callbacks or long methods
```

## Arguments

- `args`: **Required** - Description of the coding pattern, anti-pattern, or code smell to search for, optionally specifying target directories

## Security Considerations

> **Note:** This command performs read-only analysis of your codebase to identify patterns. It does not modify any files or execute any code during pattern discovery.

The pattern discovery process includes:
- Automatic detection of primary source code directories
- Comprehensive pattern matching across multiple programming languages
- Context analysis around found patterns
- Identification of pattern variations and related implementations
- Reporting of pattern locations with file and line references

## Related Resources

- [/analyze:implementation](../analyze/implementation.md) - Feature implementation analysis
- [/code:quality](../code/quality.md) - Code quality analysis including pattern evaluation
- [/analyze:tech-debt](../analyze/tech-debt.md) - Technical debt and anti-pattern identification