# Command Documentation

This directory contains comprehensive documentation for all 45 qwen-code custom slash commands, organized by functional category. Each command includes detailed usage examples, arguments, security considerations, and related resources.

## Command Categories Overview

### [Analysis Commands](analyze/)
Advanced codebase analysis and assessment tools for understanding project structure, dependencies, and quality metrics.

**Commands (7)**: [dependency](analyze/dependency.md) • [implementation](analyze/implementation.md) • [performance](analyze/performance.md) • [repo](analyze/repo.md) • [security](analyze/security.md) • [tech-debt](analyze/tech-debt.md) • [vulnerabilities](analyze/vulnerabilities.md)

### [Code Quality Commands](code/)
Comprehensive code analysis and review tools for maintaining high code quality standards.

**Commands (3)**: [analysis](code/analysis.md) • [quality](code/quality.md) • [review](code/review.md)

### [Comparison Commands](compare/)
Tools for comparing files, directories, and architectural differences between implementations.

**Commands (2)**: [dirs](compare/dirs.md) • [files](compare/files.md)

### [Content Creation Commands](create/)
Documentation and planning generators for project requirements, technical specifications, and strategic planning.

**Commands (5)**: [cost-analysis](create/cost-analysis.md) • [prd](create/prd.md) • [sprint](create/sprint.md) • [tdd](create/tdd.md) • [tutorial](create/tutorial.md)

### [Documentation Commands](docs/)
Standards-based documentation creation and maintenance tools for consistent project documentation.

**Commands (3)**: [create-standard](docs/create-standard.md) • [generate-from-standard](docs/generate-from-standard.md) • [update-standard](docs/update-standard.md)

### [Search & Discovery Commands](find/)
Pattern detection and code discovery tools for identifying specific coding patterns and anti-patterns.

**Commands (1)**: [patterns](find/patterns.md)

### [Project Initialization Commands](initialize/)
Project setup and configuration automation for consistent development environments and standards.

**Commands (5)**: [coding-rules](initialize/coding-rules.md) • [coding-standard](initialize/coding-standard.md) • [gitignore](initialize/gitignore.md) • [planning](initialize/planning.md) • [update-coding-rules](initialize/update-coding-rules.md)

### [File Management Commands](file/)
Essential utilities for preserving and managing analysis results and generated content.

**Commands (2)**: [file](file/file.md) • [merge](file/merge.md)

### [Benchmarking Commands](single/)
Single-shot variants of analysis commands designed for performance testing and comparison studies.

**Commands (2)**: [analyze/security](single/analyze/security.md) • [code/analysis](single/code/analysis.md)

### [Strategic Planning Commands](strategy/)
High-level planning and business logic analysis tools for strategic development decisions.

**Commands (2)**: [extract-business-logic](strategy/extract-business-logic.md) • [plan](strategy/plan.md)

### [Testing Commands](test/)
Test analysis and quality assurance tools for comprehensive testing strategy development.

**Commands (2)**: [coverage](test/coverage.md) • [review-and-correct](test/review-and-correct.md)

## Common Workflows

### New Project Setup
1. [initialize:planning](initialize/planning.md) - Set up project structure
2. [initialize:coding-standard](initialize/coding-standard.md) - Create coding standards
3. [initialize:coding-rules](initialize/coding-rules.md) - Generate platform-specific rules
4. [initialize:gitignore](initialize/gitignore.md) - Create .gitignore file

### Code Quality Review
1. [code:analysis](code/analysis.md) - Comprehensive codebase analysis
2. [code:quality](code/quality.md) - Quality metrics and standards compliance
3. [code:review](code/review.md) - Detailed code review with severity levels
4. [file:file](file/file.md) - Preserve analysis results

### Security Assessment
1. [analyze:security](analyze/security.md) - Comprehensive security analysis
2. [analyze:vulnerabilities](analyze/vulnerabilities.md) - Dependency vulnerability scanning
3. [analyze:tech-debt](analyze/tech-debt.md) - Security-related technical debt
4. [file:file](file/file.md) - Save security reports

### Documentation Creation
1. [docs:create-standard](docs/create-standard.md) - Establish documentation standards
2. [docs:generate-from-standard](docs/generate-from-standard.md) - Generate documentation
3. [docs:update-standard](docs/update-standard.md) - Maintain documentation consistency

## Usage Tips

- **Arguments**: Most commands accept optional arguments to focus analysis on specific areas
- **Security**: Review security considerations for commands that execute shell operations
- **Workflows**: Many commands work together - check "Related Resources" sections
- **Results**: Use `/file:save @filename.md` to preserve important analysis results

## Getting Help

- **Command Details**: Click any command link above for comprehensive documentation
- **Security Guidelines**: See [Security Policy](../../SECURITY.md) for important safety information
- **Contributing**: Follow established patterns when adding new command documentation

---

**Total Commands**: 33 • **Categories**: 11 • **Last Updated**: Sprint 2.1