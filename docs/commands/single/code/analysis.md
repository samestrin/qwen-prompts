# /single:code:analysis - Single-Shot Code Analysis

## Overview

Performs single-shot comprehensive codebase analysis using only qwen without Gemini CLI integration. This command was designed for benchmarking and comparison against the multi-shot hybrid security analysis version, providing comprehensive code analysis in a single execution, however I've decided to include it in the collection.

## Usage Examples

### Basic single-shot analysis
```qwen
/single:code:analysis
```

### Benchmarking comparison
```qwen
/single:code:analysis
# Compare results with /code:analysis to evaluate approach effectiveness
```

## Arguments

- No arguments required - performs comprehensive analysis of the current codebase

## Security Considerations

> **Note:** This single-shot command performs comprehensive read-only analysis of your codebase and may identify security patterns and architectural concerns.

The single-shot code analysis includes:
- Project overview and main functionality assessment
- Architecture and design pattern identification
- Technology stack and dependency analysis
- Code quality and maintainability evaluation
- Security considerations and best practices review
- Performance characteristics and optimization opportunities
- Testing strategy and coverage assessment
- Technical debt and improvement recommendations

**Benchmarking Purpose:**
This command enables performance and quality comparison between single-shot analysis and the multi-shot hybrid approach used in `/code:analysis`.

## Related Resources

- [/code:analysis](../../code/analysis.md) - Multi-shot hybrid code analysis for comparison
- [/single:analyze:security](../analyze/security.md) - Single-shot security analysis
- [/code:quality](../../code/quality.md) - Code quality assessment