# /analyze:security - Comprehensive Security Analysis

## Overview

Performs comprehensive security analysis of the codebase, examining authentication systems, input validation, data protection, error handling, dependencies, and infrastructure configuration. By default, this command provides a professional security assessment report formatted for security teams and stakeholders. Use the `--comprehensive` flag for detailed technical analysis.

## Usage Examples

### Professional security assessment (default)
```qwen
/analyze:security
```

### Detailed technical analysis
```qwen
/analyze:security --comprehensive
```

### Focused professional assessment
```qwen
/analyze:security Focusing on authentication and authorization
```

### Focused technical analysis
```qwen
/analyze:security --comprehensive Focusing on input validation and injection prevention
```

### Dependency security review
```qwen
/analyze:security Focusing on dependency vulnerabilities and supply chain security
```

## Arguments

- `--comprehensive`: Optional flag to provide detailed technical analysis with code references and implementation details
- `args`: Optional text to focus the analysis on specific security areas like authentication, input validation, data protection, or dependencies

## Output Formats

### Professional Security Assessment (Default)
Provides an executive-level security report with:
- Executive summary with overall security posture
- Security findings categorized by priority (Critical/High/Medium/Low)
- Compliance assessment and regulatory considerations
- Prioritized recommendations with timelines
- Security metrics and benchmarking

### Technical Analysis (--comprehensive flag)
Provides detailed technical security analysis with:
- Comprehensive technical findings
- Specific code references and line numbers
- Implementation details and technical recommendations
- Detailed vulnerability analysis with technical context

## Security Considerations

> **Important:** This command performs comprehensive security analysis and may identify sensitive security issues. Review output carefully and follow responsible disclosure practices for any vulnerabilities found.

The security analysis covers:
- Authentication and authorization mechanisms
- Input validation and sanitization
- Data protection and encryption practices
- Error handling and information disclosure
- Rate limiting and DoS protection
- Dependency security and supply chain risks
- Infrastructure and configuration security
- API security patterns
- Business logic security flaws
- Monitoring and incident response capabilities

## Related Resources

- [/analyze:vulnerabilities](vulnerabilities.md) - Focused vulnerability scanning
- [/analyze:dependency](dependency.md) - Dependency security analysis