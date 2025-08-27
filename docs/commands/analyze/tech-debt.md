# /analyze:tech-debt - Technical Debt Analysis and Prioritization

## Overview

Identifies and prioritizes technical debt across the codebase, providing a comprehensive analysis of code quality issues, architectural problems, outdated technologies, and maintenance burdens. This command creates a prioritized action plan for addressing technical debt based on impact and effort estimates.

## Usage Examples

### General technical debt analysis
```qwen
/analyze:tech-debt
```

### Critical severity focus
```qwen
/analyze:tech-debt Focusing on critical severity issues
```

### Architecture-specific analysis
```qwen
/analyze:tech-debt Focusing on architecture and coupling issues
```

### Documentation debt review
```qwen
/analyze:tech-debt Focusing on missing documentation and API clarity
```

## Arguments

- `args`: Optional text to focus the analysis on specific types of debt like architecture, documentation, testing, or performance

## Security Considerations

> **Note:** This command performs comprehensive read-only analysis of your codebase without modifying files or executing code.

The analysis uses multiple detection methods:
- Package configuration analysis for source directory identification
- Common source directory pattern matching
- Code density analysis to identify primary application logic areas
- Comprehensive debt categorization and impact assessment

## Related Resources

- [/analyze:performance](performance.md) - Performance bottleneck analysis
- [/analyze:security](security.md) - Security debt and vulnerabilities
- [/code:quality](../code/quality.md) - Code quality metrics and standards