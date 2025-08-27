# /analyze:repo - Comprehensive Repository Analysis

## Overview

Performs comprehensive repository analysis with detailed statistics and insights using embedded shell commands. This command provides extensive repository metrics, code statistics, project structure analysis, and professional assessment suitable for technical stakeholders and project managers.

## Usage Examples

### Basic repository analysis
```qwen
> /analyze:repo
```

## Arguments

- No arguments required - performs comprehensive analysis of the current repository

## Security Considerations

> **Important:** This command uses extensive shell execution to gather repository statistics including file counts, Git history, and directory analysis. All shell commands are read-only and do not modify any files.

The repository analysis includes:
- File system statistics and directory structure analysis
- Code metrics by programming language
- Git repository history and contributor analysis
- Configuration and dependency file detection
- Complexity indicators and largest file identification

**Shell commands executed:**
- File system traversal and counting
- Git repository metrics collection
- Code line counting by language
- Configuration file detection
- Dependency analysis

## Related Resources

- [/analyze:dependency](dependency.md) - Focused dependency analysis
- [/code:analysis](../code/analysis.md) - Comprehensive codebase analysis
- [/analyze:performance](performance.md) - Performance analysis and optimization

## See Also

### Complete Repository Assessment Workflow
1. **Repository Overview**: [/analyze:repo](repo.md) - Get comprehensive repository statistics
2. **Code Architecture**: [/code:analysis](../code/analysis.md) - Analyze codebase structure and patterns
3. **Quality Assessment**: [/code:quality](../code/quality.md) - Evaluate code quality metrics
4. **Security Review**: [/analyze:security](security.md) - Comprehensive security analysis
5. **Performance Analysis**: [/analyze:performance](performance.md) - Identify performance issues
6. **Technical Debt**: [/analyze:tech-debt](tech-debt.md) - Assess maintenance burden
7. **Save Results**: [/file:save](../file/save.md) - Preserve assessment report

### Project Planning Integration
- [/create:prd](../create/prd.md) - Create requirements based on repository analysis
- [/create:sprint](../create/sprint.md) - Plan development work based on findings
- [/strategy:plan](../strategy/plan.md) - Develop strategic improvement plans