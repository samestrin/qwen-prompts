# Comparison Commands

Advanced file and directory comparison tools for analyzing differences, identifying changes, and understanding structural variations across codebases. These commands provide comprehensive diff analysis and comparative insights for informed decision-making.

## Commands Overview

### [files](files.md) - File-Level Comparison
Compare multiple files with detailed code-level analysis and line-by-line differences, including structural analysis and implementation variations.

**Common Use Cases:**
- API version comparison
- Legacy vs modern implementation analysis
- Code migration impact assessment
- Cross-platform file differences

### [dirs](dirs.md) - Directory Structure Comparison
Compare directory structures and analyze organizational differences, file distribution patterns, and architectural variations between project versions.

**Common Use Cases:**
- Project structure evolution analysis
- Framework migration assessment
- Version upgrade impact analysis
- Multi-branch architecture comparison

## Comparison Workflows

### Version Migration Analysis
```
qwen
```

```qwen
# 1. Compare directory structures between versions
> /compare:dirs Compare @v1/ @v2/, focusing on architectural changes and file organization

# 2. Compare key implementation files
> /compare:files Compare @v1/api/users.js @v2/api/users.js, focusing on breaking changes and compatibility

# 3. Save migration analysis report
> /file:save @version-migration-analysis.md
```

### Code Review Comparison
```
qwen
```

```qwen
# 1. Compare implementation approaches
> /compare:files Compare @legacy/auth.js @modern/auth.js, analyzing security improvements and code quality

# 2. Compare test coverage differences
> /compare:dirs Compare @legacy/tests/ @modern/tests/, focusing on test coverage and quality improvements

# 3. Save code review comparison
> /file:save @code-review-comparison.md
```

### Cross-Platform Analysis
```
qwen
```

```qwen
# 1. Compare platform-specific implementations
> /compare:files Compare @ios/networking.swift @android/networking.kt, focusing on platform differences and shared logic

# 2. Compare project structures across platforms
> /compare:dirs Compare @ios/ @android/, analyzing architectural similarities and differences

# 3. Save cross-platform analysis
> /file:save @cross-platform-analysis.md
```

### Refactoring Impact Assessment
```
qwen
```

```qwen
# 1. Compare before and after refactoring
> /compare:files Compare @before/service.js @after/service.js, focusing on maintainability improvements

# 2. Compare directory organization changes
> /compare:dirs Compare @before/ @after/, analyzing structural improvements and code organization

# 3. Save refactoring impact report
> /file:save @refactoring-impact-report.md
```

## Command Relationships

### File Analysis Integration
- **Code Quality**: Use with [code:quality](../code/quality.md) to assess quality differences
- **Security Review**: Combine with [analyze:security](../analyze/security.md) for security impact analysis
- **Performance**: Integrate with [analyze:performance](../analyze/performance.md) for performance comparison

### Strategic Planning
- **Migration Planning**: Support [strategy:plan](../strategy/plan.md) with detailed comparison data
- **Architecture Decisions**: Inform [code:analysis](../code/analysis.md) with structural differences
- **Pattern Identification**: Work with [find:patterns](../find/patterns.md) to identify common changes

## Tips and Best Practices

### File Comparison
- Focus comparisons on specific aspects (security, performance, maintainability)
- Use meaningful file pairs that represent significant changes
- Document the rationale for comparison scope and focus areas
- Consider both functional and structural differences

### Directory Comparison
- Analyze both organizational and content differences
- Look for patterns in file additions, deletions, and relocations
- Consider the impact of structural changes on development workflow
- Document architectural evolution and decision rationale

### Comparison Strategy
- Start with high-level directory comparison, then drill down to specific files
- Use comparison results to inform strategic planning and decision-making
- Combine with analysis commands for comprehensive assessment
- Save comparison results for future reference and documentation

### Result Interpretation
- Focus on meaningful differences rather than cosmetic changes
- Identify breaking changes and compatibility issues early
- Consider the impact of changes on different stakeholder groups
- Use comparison insights to improve future development practices

## Related Resources

- **[Code Quality Commands](../code/)** - Code quality analysis for comparison context
- **[Analysis Commands](../analyze/)** - Comprehensive analysis to complement comparisons
- **[Strategy Commands](../strategy/)** - Strategic planning based on comparison insights
- **[Find Commands](../find/)** - Pattern analysis across compared files

---

**Navigation**: [← Code Commands](../code/) • [Documentation Commands →](../docs/)