# Analysis Commands

Advanced codebase analysis and assessment tools for understanding project structure, dependencies, security posture, and quality metrics. These commands provide comprehensive insights into codebases to support informed development decisions.

## Commands Overview

### [dependency](dependency.md) - Project Dependency Analysis
Analyzes project dependencies across multiple package managers, identifying usage patterns, security vulnerabilities, and optimization opportunities.

**Common Use Cases:**
- Dependency security auditing
- Bundle size optimization analysis
- Version conflict resolution
- Unused dependency identification

### [implementation](implementation.md) - Feature Implementation Analysis
Verifies whether specific features or patterns are implemented in the codebase, providing detailed coverage reports and implementation suggestions.

**Common Use Cases:**
- Feature implementation verification
- Code pattern analysis
- Coverage gap identification
- Implementation completeness assessment

### [performance](performance.md) - Performance Analysis
Identifies performance bottlenecks, inefficient algorithms, database query issues, and optimization opportunities throughout the codebase.

**Common Use Cases:**
- Performance bottleneck identification
- Database query optimization
- Memory leak detection
- Algorithm efficiency analysis

### [repo](repo.md) - Repository Analysis
Comprehensive repository statistics and insights using shell commands, providing detailed metrics on code distribution, complexity, and project characteristics.

**Common Use Cases:**
- Project assessment and due diligence
- Technology stack analysis
- Code complexity evaluation
- Repository health metrics

### [security](security.md) - Security Analysis
Comprehensive security vulnerability assessment covering authentication, authorization, input validation, data protection, and infrastructure security. Provides professional security assessment reports by default, with detailed technical analysis available via `--comprehensive` flag.

**Common Use Cases:**
- Executive security assessment reports
- Technical security vulnerability analysis
- Compliance verification and audit preparation
- Security best practices evaluation
- Threat modeling and risk assessment

### [tech-debt](tech-debt.md) - Technical Debt Analysis
Identifies and prioritizes technical debt across the codebase with impact assessment and remediation recommendations.

**Common Use Cases:**
- Technical debt prioritization
- Refactoring planning
- Code quality improvement
- Maintenance burden assessment

### [vulnerabilities](vulnerabilities.md) - Vulnerability Analysis
Focused analysis of dependency vulnerabilities with scanning guidance and remediation strategies for different technology stacks.

**Common Use Cases:**
- Dependency vulnerability scanning
- Security tool recommendations
- CVE impact assessment
- Supply chain security analysis

## Analysis Workflows

### Complete Security Assessment
```
qwen
```

```qwen
# 1. General security analysis
> /analyze:security
> /file:save @security-analysis.md

# 2. Dependency vulnerability scanning
> /analyze:vulnerabilities
> /file:save @vulnerability-scan.md

# 3. Technical debt with security focus
> /analyze:tech-debt focusing on security-related technical debt
> /file:save @security-tech-debt.md

# 4. Merge all security assessments into comprehensive report
> /file:merge @security-analysis.md @vulnerability-scan.md @security-tech-debt.md into @security-assessment-report.md, then delete the source files that were merged
```

### Performance Optimization Review
```
qwen
```

```qwen
# 1. Performance bottleneck analysis
> /analyze:performance
> /file:save @performance-bottlenecks.md

# 2. Implementation analysis for performance patterns
> /analyze:implementation focusing on caching and optimization patterns
> /file:save @performance-patterns.md

# 3. Technical debt affecting performance
> /analyze:tech-debt focusing on performance-related technical debt
> /file:save @performance-tech-debt.md

# 4. Merge all performance analyses into optimization plan
> /file:merge @performance-bottlenecks.md @performance-patterns.md @performance-tech-debt.md into @performance-optimization-plan.md, then delete the source files that were merged
```

### Dependency Health Check
```
qwen
```

```qwen
# 1. General dependency analysis
> /analyze:dependency
> /file:save @dependency-analysis.md

# 2. Vulnerability scanning
> /analyze:vulnerabilities
> /file:save @dependency-vulnerabilities.md

# 3. Implementation verification for dependency usage
> /analyze:implementation analyzing dependency usage patterns
> /file:save @dependency-usage-patterns.md

# 4. Merge all dependency analyses into health report
> /file:merge @dependency-analysis.md @dependency-vulnerabilities.md @dependency-usage-patterns.md into @dependency-health-report.md, then delete the source files that were merged
```

### Project Assessment
```
qwen
```

```qwen
# 1. Repository overview and statistics
> /analyze:repo
> /file:save @repo-overview.md

# 2. Technical debt assessment
> /analyze:tech-debt
> /file:save @tech-debt-assessment.md

# 3. Security posture evaluation
> /analyze:security
> /file:save @security-posture.md

# 4. Performance characteristics
> /analyze:performance
> /file:save @performance-characteristics.md

# 5. Merge all assessments into comprehensive project assessment
> /file:merge @repo-overview.md @tech-debt-assessment.md @security-posture.md @performance-characteristics.md into @project-assessment.md, then delete the source files that were merged
```

## Command Relationships

### Security-Focused Analysis
- **Primary**: [security](security.md) - Comprehensive security analysis
- **Dependencies**: [vulnerabilities](vulnerabilities.md) - Dependency security scanning
- **Context**: [tech-debt](tech-debt.md) - Security-related technical debt
- **Verification**: [implementation](implementation.md) - Security feature verification

### Performance-Focused Analysis
- **Primary**: [performance](performance.md) - Performance bottleneck identification
- **Context**: [dependency](dependency.md) - Dependency performance impact
- **Debt**: [tech-debt](tech-debt.md) - Performance-affecting technical debt
- **Patterns**: [implementation](implementation.md) - Performance optimization patterns

### Quality Assessment
- **Overview**: [repo](repo.md) - Repository statistics and health
- **Dependencies**: [dependency](dependency.md) - Dependency management quality
- **Debt**: [tech-debt](tech-debt.md) - Quality-affecting technical debt
- **Features**: [implementation](implementation.md) - Feature implementation quality

## Tips and Best Practices

### Security Analysis
- Use default professional reports for stakeholder communication
- Add `--comprehensive` flag for detailed technical analysis
- Run security analysis regularly, especially before releases
- Combine general security analysis with dependency vulnerability scanning
- Focus on high and critical severity findings first
- Document security decisions and accepted risks

### Performance Analysis
- Profile before optimizing - use data-driven optimization decisions
- Focus on user-impacting performance issues first
- Consider both database and application-level optimizations
- Monitor performance improvements over time

### Dependency Management
- Regular dependency health checks prevent security issues
- Update dependencies incrementally to manage risk
- Document dependency upgrade strategies and rollback plans
- Monitor for new vulnerabilities in existing dependencies

### Technical Debt Management
- Prioritize technical debt by impact and effort required
- Address security and performance-related debt first
- Plan regular technical debt reduction sprints
- Track technical debt trends over time

## Related Resources

- **[Code Quality Commands](../code/)** - Code review and quality analysis
- **[Testing Commands](../test/)** - Test coverage and quality analysis
- **[Strategic Planning](../strategy/)** - High-level planning based on analysis results
- **[Benchmarking Commands](../single/)** - Single-shot analysis for comparison

---

**Navigation**: [← All Commands](../) • [Code Commands →](../code/)