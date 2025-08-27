# /analyze:vulnerabilities - Dependency Vulnerability Analysis

## Overview

Analyzes project dependencies for potential security vulnerabilities and provides comprehensive guidance on vulnerability scanning approaches. This command examines dependency files, assesses risk levels, and recommends appropriate scanning tools and remediation strategies for each detected technology stack.

## Usage Examples

### General vulnerability analysis
```qwen
/analyze:vulnerabilities
```

### Package manager-specific analysis
```qwen
/analyze:vulnerabilities Focusing on npm dependencies
```

### CVE-focused assessment
```qwen
/analyze:vulnerabilities Focusing on outdated packages with known CVEs
```

### Comprehensive scanning strategy
```qwen
/analyze:vulnerabilities Focusing on scanning tools and automation setup
```

## Arguments

- `args`: Optional text to focus the analysis on specific package managers, vulnerability types, or scanning approaches

## Security Considerations

> **Critical:** This command identifies potential security vulnerabilities in your dependencies. Treat the output as sensitive security information and follow responsible disclosure practices.

The vulnerability analysis provides:
- Dependency risk assessment and version analysis
- Technology-specific scanning tool recommendations
- Ready-to-run vulnerability scanning commands
- Security best practices for dependency management
- Remediation guidance for identified risks

**Recommended scanning tools by technology:**
- **Node.js:** npm audit, yarn audit, Snyk CLI
- **Python:** pip-audit, safety check, bandit
- **Java:** OWASP Dependency-Check, Maven plugins
- **Ruby:** bundle audit, brakeman
- **PHP:** composer audit, Symfony Security Checker
- **Go:** govulncheck, nancy
- **Rust:** cargo audit

## Related Resources

- [/analyze:security](security.md) - Comprehensive security analysis
- [/analyze:dependency](dependency.md) - General dependency analysis
- [/single:analyze:security](../single/analyze/security.md) - Single-shot security analysis