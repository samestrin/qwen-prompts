# /code:quality - Comprehensive Code Quality Analysis

## Overview

Performs comprehensive code quality analysis focusing on maintainability, readability, and adherence to best practices. This command evaluates code structure, naming conventions, complexity, documentation, error handling, and provides actionable recommendations with quality metrics.

## Usage Examples

### General code quality analysis
```qwen
/code:quality
```

### Focus on specific quality aspects
```qwen
/code:quality Focusing on naming conventions and code complexity
```

### Security-focused quality review
```qwen
/code:quality Focusing on security best practices and input validation
```

### Performance quality assessment
```qwen
/code:quality Focusing on algorithm efficiency and performance patterns
```

## Arguments

- `args`: Optional text to focus the analysis on specific quality aspects like naming, complexity, security, or performance

## Security Considerations

> **Note:** This command performs read-only analysis of code quality patterns and may identify security-related quality issues and best practice violations.

The quality assessment covers:
- Code structure and architectural organization
- Naming conventions and clarity
- Function and class design principles (SOLID)
- Code complexity and maintainability metrics
- Documentation quality and completeness
- Error handling patterns and consistency
- Security considerations and best practices
- Performance efficiency and optimization opportunities
- Testing strategy and coverage assessment

## Related Resources

- [/code:analysis](analysis.md) - Comprehensive codebase analysis
- [/code:review](review.md) - Code review and improvement suggestions
- [/analyze:tech-debt](../analyze/tech-debt.md) - Technical debt analysis

## See Also

### Code Quality Improvement Workflow
1. **Quality Assessment**: [/code:quality](quality.md) - Evaluate current code quality metrics
2. **Detailed Review**: [/code:review](review.md) - Get specific improvement recommendations
3. **Technical Debt**: [/analyze:tech-debt](../analyze/tech-debt.md) - Prioritize improvement areas
4. **Implementation Planning**: [/create:sprint](../create/sprint.md) - Plan quality improvement sprints
5. **Standards Creation**: [/initialize:coding-standard](../initialize/coding-standard.md) - Establish quality standards
6. **Documentation**: [/docs:generate-from-standard](../docs/generate-from-standard.md) - Document quality standards

### Integration with Creation Commands
- [/create:tutorial](../create/tutorial.md) - Create tutorials on quality best practices
- [/create:prd](../create/prd.md) - Include quality requirements in product specs
- [/initialize:coding-rules](../initialize/coding-rules.md) - Enforce quality through platform rules