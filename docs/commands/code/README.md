# Code Quality Commands

Comprehensive code analysis and review tools for maintaining high code quality standards. These commands provide detailed insights into code architecture, quality metrics, and actionable improvement recommendations.

## Commands Overview

### [analysis](analysis.md) - Comprehensive Codebase Analysis
Performs comprehensive technical analysis of codebase architecture and structure. Provides professional technical assessment reports by default, with detailed technical analysis available via `--comprehensive` flag.

**Common Use Cases:**
- Executive technical assessment reports
- Detailed technical architecture analysis
- New team member onboarding
- Architecture documentation and evaluation
- Technology stack assessment
- Project structure and design quality evaluation

### [quality](quality.md) - Code Quality Analysis
Comprehensive code quality analysis focusing on maintainability, readability, and adherence to best practices with actionable recommendations.

**Common Use Cases:**
- Code quality assessment
- Maintainability evaluation
- Best practices compliance
- Quality metrics reporting

### [review](review.md) - Comprehensive Code Review
Performs comprehensive code review analyzing quality, security, performance, and best practices compliance with severity-based findings.

**Common Use Cases:**
- Pre-release code review
- Pull request analysis
- Security-focused code review
- Architecture compliance review

## Quality Assessment Workflow

### Complete Quality Review
```
qwen
```

```qwen
# 1. Comprehensive architecture analysis
> /code:analysis
> /file:save @architecture-analysis.md

# 2. Quality metrics and standards compliance
> /code:quality
> /file:save @quality-metrics.md

# 3. Detailed code review with severity levels
> /code:review
> /file:save @code-review-findings.md

# 4. Merge all quality analyses into comprehensive report
> /file:merge @architecture-analysis.md @quality-metrics.md @code-review-findings.md into @code-quality-assessment.md, then delete the source files that were merged
```

### Security-Focused Review
```
qwen
```

```qwen
# 1. Code analysis with security focus
> /code:analysis focusing on security patterns and vulnerabilities
> /file:save @security-code-analysis.md

# 2. Security best practices compliance
> /code:quality focusing on security best practices and input validation
> /file:save @security-quality-check.md

# 3. Security-focused code review
> /code:review focusing on security vulnerabilities and performance issues
> /file:save @security-review-findings.md

# 4. Merge all security analyses into comprehensive review
> /file:merge @security-code-analysis.md @security-quality-check.md @security-review-findings.md into @security-code-review.md, then delete the source files that were merged
```

### Performance Review
```
qwen
```

```qwen
# 1. Performance-oriented code analysis
> /code:analysis focusing on performance characteristics
> /file:save @performance-code-analysis.md

# 2. Algorithm efficiency assessment
> /code:quality focusing on algorithm efficiency and performance patterns
> /file:save @performance-quality-check.md

# 3. Performance-focused code review
> /code:review focusing on performance issues and optimization opportunities
> /file:save @performance-review-findings.md

# 4. Merge all performance analyses into comprehensive review
> /file:merge @performance-code-analysis.md @performance-quality-check.md @performance-review-findings.md into @performance-code-review.md, then delete the source files that were merged
```

## Command Relationships

### Comprehensive Assessment
- **Architecture**: [analysis](analysis.md) - Overall structure and design
- **Quality**: [quality](quality.md) - Standards and maintainability
- **Review**: [review](review.md) - Detailed findings and recommendations

### Integration with Analysis Commands
- **Security**: Use with [analyze:security](../analyze/security.md) for complete security assessment
- **Performance**: Complement with [analyze:performance](../analyze/performance.md) for performance optimization
- **Dependencies**: Combine with [analyze:dependency](../analyze/dependency.md) for holistic quality view

## Tips and Best Practices

### Code Analysis
- Use default professional reports for stakeholder communication
- Add `--comprehensive` flag for detailed technical analysis
- Use for new project assessment and team onboarding
- Regular architecture reviews help maintain design integrity
- Document architectural decisions and trade-offs
- Focus on understanding before making changes

### Quality Assessment
- Establish quality baselines and track improvements
- Address high-impact quality issues first
- Automate quality checks where possible
- Balance perfectionism with pragmatic delivery

### Code Review
- Use severity levels to prioritize fixes
- Address critical and high severity issues before deployment
- Document accepted technical debt and risks
- Foster learning culture through constructive feedback

## Related Resources

- **[Analysis Commands](../analyze/)** - Deep codebase analysis and assessment
- **[Testing Commands](../test/)** - Test quality and coverage analysis
- **[Comparison Commands](../compare/)** - Code comparison and diff analysis

---

**Navigation**: [← Analysis Commands](../analyze/) • [Comparison Commands →](../compare/)