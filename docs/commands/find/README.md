# Find Commands

Advanced pattern detection and code search tools for identifying specific coding patterns, anti-patterns, and implementation practices across codebases. These commands help locate code smells, architectural patterns, and development practices.

## Commands Overview

### [patterns](patterns.md) - Code Pattern Detection
Finds specific coding patterns, anti-patterns, or code smells throughout the codebase with intelligent directory detection and comprehensive analysis.

**Common Use Cases:**
- Anti-pattern identification and remediation
- Code smell detection and refactoring planning
- Architecture pattern verification
- Best practice compliance assessment
- Security vulnerability pattern detection
- Performance bottleneck pattern identification

## Pattern Detection Workflows

### Code Quality Assessment
```
qwen
```

```qwen
# 1. Find common anti-patterns
> /find:patterns Find all instances of nested callback patterns and promise anti-patterns in the codebase
> /file:save @anti-patterns-report.md

# 2. Identify security vulnerabilities
> /find:patterns Find all instances of SQL injection vulnerabilities and unsafe input handling
> /file:save @security-vulnerabilities-report.md

# 3. Merge pattern analyses into comprehensive quality assessment
> /file:merge @anti-patterns-report.md @security-vulnerabilities-report.md into @code-quality-patterns-report.md, then delete the source files that were merged
```

### Architecture Pattern Analysis
```
qwen
```

```qwen
# 1. Analyze architectural patterns
> /find:patterns Find all instances of the repository pattern and dependency injection usage
> /file:save @architectural-patterns.md

# 2. Identify inconsistent implementations
> /find:patterns Find inconsistent error handling patterns across the application
> /file:save @inconsistent-patterns.md

# 3. Merge pattern analyses into comprehensive architecture analysis
> /file:merge @architectural-patterns.md @inconsistent-patterns.md into @architecture-patterns-analysis.md, then delete the source files that were merged
```

### Security Pattern Review
```
qwen
```

```qwen
# 1. Find authentication patterns
> /find:patterns Find all instances of authentication and session management patterns
> /file:save @authentication-patterns.md

# 2. Identify security anti-patterns
> /find:patterns Find hardcoded secrets, weak encryption, and insecure communication patterns
> /file:save @security-anti-patterns.md

# 3. Merge security analyses into comprehensive pattern review
> /file:merge @authentication-patterns.md @security-anti-patterns.md into @security-patterns-review.md, then delete the source files that were merged
```

### Performance Pattern Detection
```
qwen
```

```qwen
# 1. Find performance bottlenecks
> /find:patterns Find N+1 query problems and inefficient database access patterns
> /file:save @performance-bottlenecks.md

# 2. Identify memory leaks and resource issues
> /find:patterns Find memory leak patterns and resource management issues
> /file:save @memory-resource-issues.md

# 3. Merge performance analyses into comprehensive report
> /file:merge @performance-bottlenecks.md @memory-resource-issues.md into @performance-patterns-report.md, then delete the source files that were merged
```

### Refactoring Preparation
```
qwen
```

```qwen
# 1. Find code duplication patterns
> /find:patterns Find duplicate code blocks and similar implementation patterns

# 2. Identify refactoring opportunities
> /find:patterns Find long methods, large classes, and complex conditional logic

# 3. Save refactoring plan
> /file:save @refactoring-opportunities.md
```

## Command Relationships

### Integration with Analysis Commands
- **Security Analysis**: Complement [analyze:security](../analyze/security.md) with specific vulnerability patterns
- **Performance Analysis**: Support [analyze:performance](../analyze/performance.md) with performance anti-pattern detection
- **Technical Debt**: Enhance [analyze:tech-debt](../analyze/tech-debt.md) with pattern-based debt identification

### Code Quality Enhancement
- **Code Review**: Inform [code:review](../code/review.md) with detected patterns and issues
- **Quality Analysis**: Support [code:quality](../code/quality.md) with specific quality pattern detection
- **Best Practices**: Guide [code:analysis](../code/analysis.md) with pattern-based insights

### Strategic Planning
- **Refactoring Strategy**: Support [strategy:plan](../strategy/plan.md) with pattern-based refactoring insights
- **Architecture Decisions**: Inform [create:prd](../create/prd.md) with current pattern analysis
- **Planning**: Enhance [initialize:planning](../initialize/planning.md) with existing pattern assessment

## Tips and Best Practices

### Pattern Detection Strategy
- Start with broad pattern categories, then narrow down to specific issues
- Focus on patterns that impact security, performance, or maintainability
- Use pattern detection to inform refactoring and architectural decisions
- Document found patterns with context and remediation suggestions

### Effective Pattern Queries
- Be specific about the patterns you're looking for
- Include both positive patterns (what you want) and anti-patterns (what to avoid)
- Consider the impact and severity of different pattern types
- Look for patterns that violate established coding standards or best practices

### Analysis Workflow
- Combine pattern detection with other analysis commands for comprehensive insights
- Use pattern findings to prioritize technical debt and improvement efforts
- Create action items based on pattern detection results
- Track pattern remediation progress over time

### Pattern Categories
- **Security Patterns**: Authentication, authorization, input validation, encryption
- **Performance Patterns**: Caching, database queries, resource management, algorithms
- **Architecture Patterns**: Design patterns, dependency management, separation of concerns
- **Code Quality Patterns**: Naming conventions, code organization, error handling, testing

## Related Resources

- **[Analysis Commands](../analyze/)** - Comprehensive codebase analysis and assessment
- **[Code Quality Commands](../code/)** - Code quality analysis and review
- **[Comparison Commands](../compare/)** - Pattern comparison across different implementations
- **[Strategy Commands](../strategy/)** - Strategic planning based on pattern analysis

---

**Navigation**: [← Documentation Commands](../docs/) • [Initialization Commands →](../initialize/)