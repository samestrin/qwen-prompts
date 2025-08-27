# /analyze:performance - Performance Analysis and Optimization

## Overview

Identifies performance issues, bottlenecks, and optimization opportunities across your codebase. This command analyzes database queries, API endpoints, frontend performance, memory usage, algorithm efficiency, and concurrency patterns to provide actionable optimization recommendations.

## Usage Examples

### General performance audit
```qwen
/analyze:performance
```

### Database-focused analysis
```qwen
/analyze:performance Focusing on database query performance
```

### Frontend performance review
```qwen
/analyze:performance Focusing on bundle size and rendering performance
```

### Memory usage analysis
```qwen
/analyze:performance Focusing on memory leaks and usage patterns
```

## Arguments

- `args`: Optional text to focus the analysis on specific performance areas like database, frontend, memory, or algorithms

## Security Considerations

> **Note:** This command performs read-only analysis and does not execute or modify any code during the performance audit.

The analysis covers:
- Database query patterns and efficiency
- API endpoint performance characteristics  
- Frontend bundle and rendering optimization
- Memory usage and potential leak detection
- Algorithm complexity and optimization opportunities
- Asynchronous operation and concurrency patterns

## Related Resources

- [/analyze:dependency](dependency.md) - Dependency performance impact
- [/analyze:tech-debt](tech-debt.md) - Technical debt analysis
- [/code:quality](../code/quality.md) - Code quality metrics