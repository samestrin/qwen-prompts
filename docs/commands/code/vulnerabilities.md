# /code:vulnerabilities - Code Vulnerability Analysis

## Overview

Performs comprehensive security vulnerability analysis of codebases, examining both dependency-level and code-level security issues. This command provides professional security assessments with risk scoring, compliance mapping, and prioritized remediation strategies.

## Usage Examples

### General vulnerability analysis
```qwen
/code:vulnerabilities
```

### Focus on specific package manager
```qwen
/code:vulnerabilities focusing on npm dependencies
```

### Target specific security concerns
```qwen
/code:vulnerabilities focusing on outdated packages with known CVEs
```

### Analyze specific directories
```qwen
/code:vulnerabilities for the API and authentication modules
```

## Arguments

- `args`: **Optional** - Specify focus areas, package managers, or specific security concerns to analyze

## Analysis Framework

### Team-Based Analysis Approach
The command simulates a security team with three specialized roles:

1. **Security Engineer**: Vulnerability assessment, CVSS scoring, threat modeling, compliance frameworks
2. **DevOps Engineer**: Dependency management, CI/CD security, supply chain security, container scanning
3. **Software Architect**: System design, dependency relationships, architectural security patterns, risk assessment

### Comprehensive Assessment Areas

#### 1. Codebase Overview
- Source directory analysis
- Technology stack identification
- File type and structure assessment

#### 2. Dependency Analysis
- Package manager identification
- Third-party library vulnerability scanning
- Dependency tree analysis
- Supply chain security assessment

#### 3. Code-Level Vulnerability Patterns
- SQL injection detection
- Cross-site scripting (XSS) analysis
- CSRF vulnerability assessment
- Authentication and authorization flaws
- Insecure configuration detection

#### 4. Static Analysis Opportunities
- Input validation patterns
- Output encoding analysis
- Cryptographic implementation review
- Security configuration assessment

## Risk Assessment Framework

### CVSS-Based Risk Scoring
- **Critical (9-10)**: Actively exploited vulnerabilities with high business impact
- **High (7-8)**: Known vulnerabilities with available exploits
- **Medium (4-6)**: Vulnerabilities requiring specific conditions to exploit
- **Low (1-3)**: Theoretical vulnerabilities or low-impact issues

### Remediation Timeline Planning
- **Immediate (0-7 days)**: Critical vulnerabilities with active exploits
- **30-day timeline**: High-priority vulnerabilities requiring coordinated updates
- **90-day timeline**: Medium-priority issues requiring architectural changes
- **Next cycle**: Low-priority improvements and process enhancements

## Compliance Mapping

### SOC2 Type II Controls
- **CC6.1 (Logical Access)**: Authentication and authorization vulnerabilities
- **CC6.2 (System Boundaries)**: Network security and API security issues
- **CC6.3 (Data Protection)**: Encryption and data handling vulnerabilities
- **CC6.7 (System Monitoring)**: Logging and monitoring security gaps

### ISO27001 Controls
- **A.12.6.1 (Vulnerability Management)**: Systematic vulnerability identification
- **A.14.2.1 (Secure Development)**: Secure coding practices integration
- **A.18.2.3 (Technical Compliance)**: Regulatory compliance requirements
- **A.12.1.2 (Change Management)**: Security impact assessment

## Supported Technologies

### Dependency Vulnerability Scanners
- **Node.js**: npm audit, yarn audit, pnpm audit, Snyk CLI
- **Python**: pip-audit, safety check, pip-audit --format=json
- **Java**: OWASP Dependency-Check, Maven dependency:check, Gradle dependencyCheckAnalyze
- **Ruby**: bundle audit, bundler-audit
- **PHP**: composer audit, Symfony Security Checker
- **Go**: govulncheck, nancy
- **Rust**: cargo audit
- **Multi-language**: OWASP dep-scan, Trivy, Snyk

### Static Code Analysis Tools
- **JavaScript/Node.js**: ESLint security plugins, JSHint, SonarJS, semgrep
- **Python**: bandit, safety, semgrep, pylint security plugins
- **Java**: SpotBugs, PMD, SonarJava, semgrep
- **Ruby**: brakeman, RuboCop security cops, semgrep
- **PHP**: PHPCS Security, RIPS, semgrep
- **Go**: gosec, staticcheck, semgrep
- **Rust**: cargo clippy, cargo audit
- **C/C++**: Clang Static Analyzer, Cppcheck, semgrep
- **Multi-language**: SonarQube, CodeQL, Semgrep, Veracode

## Security Considerations

> **Note:** This command performs read-only analysis of code and dependencies. It does not modify code, install packages, or execute external commands beyond analysis.

The vulnerability analysis includes:
- Comprehensive dependency tree examination
- Static code pattern analysis for common vulnerabilities
- Supply chain security assessment
- Risk scoring with business impact analysis
- Compliance framework mapping
- Actionable remediation guidance with timelines

## Output Format

The command generates a comprehensive Markdown report including:
- Executive summary with risk overview
- Detailed vulnerability findings by category
- Risk scoring matrix with CVSS ratings
- Prioritized remediation roadmap
- Compliance mapping and requirements
- Specific scanning commands for detected technologies
- Business impact assessment

## Related Resources

- [/code:analysis](analysis.md) - Comprehensive codebase analysis
- [/code:review](review.md) - Code quality and security review
- [/code:quality](quality.md) - Code quality assessment
- [/analyze:security](../analyze/security.md) - Security-focused analysis
- [/analyze:dependency](../analyze/dependency.md) - Dependency analysis and management