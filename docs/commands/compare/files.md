# /compare:files - Detailed File Comparison and Analysis

## Overview

Performs detailed file-level comparison with comprehensive code-level analysis and line-by-line differences. This command analyzes file structure, code quality metrics, functional differences, and provides recommendations for code consolidation and improvements.

## Usage Examples

### Compare two files
```qwen
/compare:files Compare these files: @service/legacy_api.js @service/new_api.js
```

### Compare directories with specific focus
```qwen
/compare:files Compare @v1/ @v2/, focusing on implementation differences and code quality
```

### Focus on security differences
```qwen
/compare:files Compare @auth/old_auth.py @auth/new_auth.py, focusing on security improvements
```

### Performance-focused comparison
```qwen
/compare:files Compare @utils/slow_parser.js @utils/fast_parser.js, focusing on performance optimizations
```

## Arguments

- `args`: **Required** - Specify the files or directories to compare, optionally with focus areas like implementation differences, security, or performance

## Security Considerations

> **Note:** This command performs read-only analysis and comparison of specified files. It does not modify any files during the comparison process.

The comparison analysis includes:
- File structure and dependency analysis
- Code quality and security pattern comparison
- Performance implications of different implementations
- Line-by-line difference identification with specific references
- Functional behavior and API compatibility analysis
- Recommendations for consolidation and improvements

## Related Resources

- [/compare:dirs](dirs.md) - Directory-level comparison
- [/code:review](../code/review.md) - Comprehensive code review
- [/analyze:implementation](../analyze/implementation.md) - Feature implementation analysis