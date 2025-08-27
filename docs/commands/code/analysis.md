# /code:analysis - Comprehensive Codebase Analysis

## Overview

Performs comprehensive technical analysis of codebase architecture and structure using advanced context analysis. By default, this command provides a professional technical assessment report formatted for technical leads, architects, and stakeholders. Use the `--comprehensive` flag for detailed technical analysis with code references.

## Usage Examples

### Professional technical assessment (default)
```qwen
> /code:analysis
```

### Detailed technical analysis
```qwen
> /code:analysis --comprehensive
```

### Focused professional assessment
```qwen
> /code:analysis Focusing on architecture patterns and design decisions
```

### Focused technical analysis
```qwen
> /code:analysis --comprehensive Analyze the @server/api/ directory
```

### Security-focused analysis
```qwen
> /code:analysis Focusing on security patterns and vulnerabilities
```

## Arguments

- `--comprehensive`: Optional flag to provide detailed technical analysis with code references and implementation details
- `args`: Optional text to focus the analysis on specific aspects like architecture, security, performance, or specific directories

## Output Formats

### Professional Technical Assessment (Default)
Provides an executive-level technical report with:
- Executive summary with technical maturity assessment
- Technical architecture overview and design quality evaluation
- Code quality assessment with strengths and improvement areas
- Risk assessment categorized by priority (High/Medium/Low)
- Technology and dependency recommendations
- Development process evaluation
- Prioritized action plan with implementation roadmap

### Technical Analysis (--comprehensive flag)
Provides detailed technical analysis with:
- Comprehensive technical findings
- Specific file and code references
- Implementation details and technical recommendations
- Detailed architecture and design pattern analysis

## Security Considerations

> **Note:** This command performs comprehensive read-only analysis of your codebase and may identify security patterns and potential vulnerabilities.

The analysis includes:
- Project architecture and design patterns
- Technology stack and dependency analysis
- Security considerations and authentication patterns
- Performance characteristics and optimization opportunities
- Testing strategies and coverage assessment
- Build and deployment configuration review

## Related Resources

- [/analyze:security](../analyze/security.md) - Security-focused analysis
- [/analyze:performance](../analyze/performance.md) - Performance bottleneck analysis