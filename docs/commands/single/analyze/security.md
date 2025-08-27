# /single:analyze:security - Single-Shot Security Analysis

## Overview

Performs single-shot security analysis using only qwen without Gemini CLI integration. This command was designed for benchmarking and comparison against the multi-shot hybrid security analysis version, providing security analysis in a single execution, however I've decided to include it in the collection.

## Usage Examples

### Basic single-shot security analysis
```qwen
/single:analyze:security
```

### Benchmarking comparison
```qwen
/single:analyze:security
# Compare results with /analyze:security to evaluate approach effectiveness
```

## Arguments

- No arguments required - performs comprehensive security analysis of the current codebase

## Security Considerations

> **Important:** This single-shot command performs comprehensive security analysis that may identify critical vulnerabilities. Review output carefully and handle security findings appropriately.

The single-shot security analysis covers:
- Authentication and authorization mechanisms
- Input validation and injection prevention
- Session management and credential handling
- Access control and privilege escalation risks
- Data protection and encryption practices
- Error handling and information disclosure
- API security and endpoint protection
- Infrastructure and configuration security

**Benchmarking Purpose:**
This command enables performance and quality comparison between single-shot analysis and the multi-shot hybrid approach used in `/analyze:security`.

## Related Resources

- [/analyze:security](../../analyze/security.md) - Multi-shot hybrid security analysis for comparison
- [/single:code:analysis](../code/analysis.md) - Single-shot code analysis
- [/analyze:vulnerabilities](../../analyze/vulnerabilities.md) - Dependency vulnerability analysis