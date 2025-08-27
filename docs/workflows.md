# Common Workflows

Practical workflow examples showing how to use qwen-prompts commands together for real-world development scenarios. Each workflow includes step-by-step instructions and expected outcomes.

## New Project Workflows

### Complete New Project Setup
**Goal**: Set up a new project with standards, rules, and documentation structure.

```qwen
# 1. Initialize project structure
> /initialize:planning

# 2. Create base coding standard
> /initialize:coding-standard For a React TypeScript project with modern tooling

# 3. Generate platform-specific coding rules
> /initialize:coding-rules all

# 4. Create comprehensive .gitignore
> /initialize:gitignore react, typescript, node, vscode

# 5. Create documentation
> /docs:create-standard For a public-facing react typescript project

# 6. Save setup documentation
> /file:save /planning/specifications/documentation.md
```

**Expected Outcome**: Complete project structure with standards, rules, and .gitignore configured for your stack.

### Project Assessment for New Team Members
**Goal**: Understand an existing project quickly and comprehensively.

```qwen
# 1. Get repository overview
> /analyze:repo
> /file:save @repo-analysis.md

# 2. Understand architecture and structure
> /code:analysis --comprehensive  # Use detailed technical analysis for team onboarding
> /file:save @code-analysis.md

# 3. Assess current code quality
> /code:quality
> /file:save @code-quality.md

# 4. Check security posture
> /analyze:security
> /file:save @security-analysis.md

# 5. Merge all analyses into comprehensive overview
> /file:merge @repo-analysis.md @code-analysis.md @code-quality.md @security-analysis.md into @project-overview-[date].md
```

**Expected Outcome**: Complete project understanding document for team onboarding.

## Security Assessment Workflows

### Comprehensive Security Review
**Goal**: Complete security assessment for pre-release or audit purposes.

```qwen
# 1. Comprehensive security analysis
> /analyze:security --comprehensive  # Use detailed technical analysis for audit purposes
> /file:save @security-analysis.md

# 2. Dependency vulnerability scanning
> /analyze:vulnerabilities
> /file:save @vulnerability-scan.md

# 3. Security pattern analysis
> /find:patterns authentication and authorization patterns
> /file:save @security-patterns.md

# 4. Security-focused code review
> /code:review focusing on security vulnerabilities
> /file:save @security-code-review.md

# 5. Check for security-related technical debt
> /analyze:tech-debt focusing on security issues
> /file:save @security-tech-debt.md

# 6. Merge all security analyses into comprehensive report
> /file:merge @security-analysis.md @vulnerability-scan.md @security-patterns.md @security-code-review.md @security-tech-debt.md into @security-audit-[date].md
```

**Expected Outcome**: Complete security assessment report with prioritized findings and recommendations.

### Dependency Security Check
**Goal**: Focus on dependency-related security issues.

```qwen
# 1. Analyze dependency usage and security
> /analyze:dependency focusing on security vulnerabilities
> /file:save @dependency-analysis.md

# 2. Detailed vulnerability scanning
> /analyze:vulnerabilities
> /file:save @vulnerability-details.md

# 3. Check implementation of security features
> /analyze:implementation focusing on security middleware and validation
> /file:save @security-implementation.md

# 4. Merge dependency security analyses
> /file:merge @dependency-analysis.md @vulnerability-details.md @security-implementation.md into @dependency-security-[date].md
```

**Expected Outcome**: Focused report on dependency security with specific remediation steps.

## Performance Optimization Workflows

### Performance Assessment and Planning
**Goal**: Identify and plan performance optimization work.

```qwen
# 1. Performance bottleneck analysis
> /analyze:performance
> /file:save @performance-analysis.md

# 2. Check for performance patterns
> /analyze:implementation focusing on caching and optimization patterns
> /file:save @performance-patterns.md

# 3. Performance-related technical debt
> /analyze:tech-debt focusing on performance issues
> /file:save @performance-tech-debt.md

# 4. Create performance improvement sprint
> /create:sprint Optimize application performance based on analysis findings
> /file:save @performance-sprint-plan.md

# 5. Merge all performance analyses
> /file:merge @performance-analysis.md @performance-patterns.md @performance-tech-debt.md @performance-sprint-plan.md into @performance-optimization-plan-[date].md
```

**Expected Outcome**: Prioritized performance improvement plan with implementation strategy.

### Database Performance Review
**Goal**: Focus specifically on database performance issues.

```qwen
# 1. Database-focused performance analysis
> /analyze:performance focusing on database queries and performance
> /file:save @database-performance.md

# 2. Check for N+1 query patterns
> /find:patterns database query patterns and potential N+1 issues
> /file:save @database-patterns.md

# 3. Review implementation of database optimizations
> /analyze:implementation focusing on database indexes and query optimization
> /file:save @database-implementation.md

# 4. Merge database performance analyses
> /file:merge @database-performance.md @database-patterns.md @database-implementation.md into @database-performance-analysis-[date].md
```

**Expected Outcome**: Database-specific performance analysis with optimization recommendations.

## Code Quality Workflows

### Pre-Release Quality Review
**Goal**: Comprehensive quality check before major release.

```qwen
# 1. Comprehensive code analysis
> /code:analysis --comprehensive  # Use detailed technical analysis for pre-release review
> /file:save @code-analysis.md

# 2. Quality metrics assessment
> /code:quality
> /file:save @code-quality.md

# 3. Detailed code review with severity levels
> /code:review
> /file:save @code-review.md

# 4. Technical debt assessment
> /analyze:tech-debt
> /file:save @tech-debt.md

# 5. Test coverage analysis
> /test:coverage
> /file:save @test-coverage.md

# 6. Merge all quality analyses into comprehensive report
> /file:merge @code-analysis.md @code-quality.md @code-review.md @tech-debt.md @test-coverage.md into @pre-release-quality-review-[date].md
```

**Expected Outcome**: Complete quality assessment with categorized findings and improvement recommendations.

### Legacy Code Assessment
**Goal**: Assess legacy codebase for modernization planning.

```qwen
# 1. Repository analysis for technology overview
> /analyze:repo
> /file:save @repo-analysis.md

# 2. Identify technical debt
> /analyze:tech-debt
> /file:save @tech-debt-analysis.md

# 3. Find outdated patterns
> /find:patterns legacy patterns and anti-patterns
> /file:save @legacy-patterns.md

# 4. Compare with modern implementations
> /compare:dirs @legacy/ @modern/ focusing on architectural improvements
> /file:save @architecture-comparison.md

# 5. Create modernization strategy using previous analyses
> /strategy:plan to modernize the legacy codebase while maintaining functionality, referencing @repo-analysis.md @tech-debt-analysis.md @legacy-patterns.md @architecture-comparison.md
> /file:save @modernization-strategy.md

# 6. Merge all assessments into final plan
> /file:merge @repo-analysis.md @tech-debt-analysis.md @legacy-patterns.md @architecture-comparison.md @modernization-strategy.md into @legacy-modernization-plan-[date].md
```

**Expected Outcome**: Strategic plan for legacy code modernization with risk assessment.

## Documentation Workflows

### Documentation Standardization
**Goal**: Create and implement consistent documentation standards.

```qwen
# 1. Create documentation standard
> /docs:create-standard for enterprise software documentation
> /file:save @documentation-standard.md

# 2. Generate documentation from standard
> /docs:generate-from-standard using the created standard for API endpoints, referencing @documentation-standard.md
> /file:save @generated-docs.md

# 3. Create educational content
> /create:tutorial on using the documentation standards, referencing @documentation-standard.md
> /file:save @documentation-tutorial.md

# 4. Update existing documentation
> /docs:update-standard for consistency with new standards, referencing @documentation-standard.md
> /file:save @updated-docs.md

# 5. Merge all documentation components
> /file:merge @documentation-standard.md @generated-docs.md @documentation-tutorial.md @updated-docs.md into @documentation-standards-package-[date].md
```

**Expected Outcome**: Complete documentation system with standards, generated docs, and maintenance guidelines.

### API Documentation Creation
**Goal**: Create comprehensive API documentation.

```qwen
# 1. Analyze API structure
> /code:analysis --comprehensive focusing on API endpoints and data models
> /file:save @api-analysis.md

# 2. Create API documentation standard
> /docs:create-standard for REST API documentation with examples, referencing @api-analysis.md
> /file:save @api-standard.md

# 3. Generate API documentation
> /docs:generate-from-standard for API endpoints using the standard, referencing @api-standard.md
> /file:save @api-docs-generated.md

# 4. Create API usage tutorial
> /create:tutorial on using the API endpoints, referencing @api-analysis.md @api-docs-generated.md
> /file:save @api-tutorial.md

# 5. Merge all API documentation components
> /file:merge @api-analysis.md @api-standard.md @api-docs-generated.md @api-tutorial.md into @api-documentation-complete-[date].md
```

**Expected Outcome**: Professional API documentation with examples, standards, and tutorials.

## Migration and Refactoring Workflows

### Framework Migration Planning
**Goal**: Plan migration from one framework to another.

```qwen
# 1. Analyze current implementation
> /analyze:implementation of current framework usage patterns
> /file:save @current-implementation.md

# 2. Compare framework approaches
> /compare:dirs @react-version/ @vue-version/ focusing on patterns and structure
> /file:save @framework-comparison.md

# 3. Identify migration challenges
> /find:patterns framework-specific patterns that need migration
> /file:save @migration-challenges.md

# 4. Create migration strategy
> /strategy:plan to migrate from React to Vue while maintaining functionality, referencing @current-implementation.md @framework-comparison.md @migration-challenges.md
> /file:save @migration-strategy.md

# 5. Plan migration sprints
> /create:sprint Phase 1 of framework migration, referencing @migration-strategy.md
> /file:save @migration-sprint-plan.md

# 6. Merge all migration planning components
> /file:merge @current-implementation.md @framework-comparison.md @migration-challenges.md @migration-strategy.md @migration-sprint-plan.md into @framework-migration-strategy-[date].md
```

**Expected Outcome**: Detailed migration strategy with phased approach and risk mitigation.

### Refactoring Planning
**Goal**: Plan major refactoring work based on technical debt analysis.

```qwen
# 1. Identify technical debt
> /analyze:tech-debt
> /file:save @tech-debt-analysis.md

# 2. Analyze current implementation patterns
> /code:review focusing on areas needing refactoring
> /file:save @code-review-refactoring.md

# 3. Find problematic patterns
> /find:patterns code smells and refactoring opportunities
> /file:save @problematic-patterns.md

# 4. Create refactoring strategy
> /strategy:plan to refactor identified technical debt areas, referencing @tech-debt-analysis.md @code-review-refactoring.md @problematic-patterns.md
> /file:save @refactoring-strategy.md

# 5. Plan refactoring sprints
> /create:sprint Refactor user management module, referencing @refactoring-strategy.md
> /file:save @refactoring-sprint-plan.md

# 6. Merge all refactoring planning components
> /file:merge @tech-debt-analysis.md @code-review-refactoring.md @problematic-patterns.md @refactoring-strategy.md @refactoring-sprint-plan.md into @refactoring-strategy-plan-[date].md
```

**Expected Outcome**: Prioritized refactoring plan with clear implementation strategy.

## Testing and Quality Assurance Workflows

### Testing Strategy Development
**Goal**: Assess and improve testing coverage and quality.

```qwen
# 1. Analyze current test coverage
> /test:coverage
> /file:save @test-coverage-analysis.md

# 2. Review and identify test issues
> /test:review-and-correct
> /file:save @test-issues.md

# 3. Find testing patterns and gaps
> /find:patterns testing patterns and coverage gaps
> /file:save @testing-patterns.md

# 4. Implementation check for testing infrastructure
> /analyze:implementation of testing frameworks and utilities
> /file:save @testing-infrastructure.md

# 5. Create testing improvement plan
> /create:sprint Improve test coverage and quality, referencing @test-coverage-analysis.md @test-issues.md @testing-patterns.md @testing-infrastructure.md
> /file:save @testing-sprint-plan.md

# 6. Merge all testing analyses
> /file:merge @test-coverage-analysis.md @test-issues.md @testing-patterns.md @testing-infrastructure.md @testing-sprint-plan.md into @testing-strategy-improvement-[date].md
```

**Expected Outcome**: Comprehensive testing improvement strategy with specific action items.

### CI/CD Quality Gates
**Goal**: Establish quality gates for continuous integration.

```qwen
# 1. Quality baseline assessment
> /code:quality
> /file:save @quality-baseline.md

# 2. Security baseline
> /analyze:security --comprehensive  # Use detailed analysis for CI/CD quality gates
> /file:save @security-baseline.md

# 3. Test coverage baseline
> /test:coverage
> /file:save @coverage-baseline.md

# 4. Performance baseline
> /analyze:performance
> /file:save @performance-baseline.md

# 5. Create quality gate standards
> /initialize:coding-standard with quality gate requirements, referencing @quality-baseline.md @security-baseline.md @coverage-baseline.md @performance-baseline.md
> /file:save @quality-standards.md

# 6. Merge all baselines and standards
> /file:merge @quality-baseline.md @security-baseline.md @coverage-baseline.md @performance-baseline.md @quality-standards.md into @cicd-quality-gates-[date].md
```

**Expected Outcome**: Quality gate configuration for CI/CD pipeline with baseline metrics.

## Tips for Workflow Success

### Command Chaining Best Practices
- Chain commands on separate lines: `> /analyze:repo` then `> /file:save @analysis.md`
- Save results after each major analysis to prevent data loss
- Use descriptive filenames with dates for tracking: `analysis-[date].md`

### Workflow Customization
- Adapt workflows to your project's specific needs
- Skip irrelevant steps for focused analysis
- Add additional commands based on your findings

### Result Management
- Create dedicated directories for different types of reports
- Use consistent naming conventions for saved files
- Archive reports regularly to track progress over time

### Team Collaboration
- Share workflow results with team members
- Use workflows as templates for team standards
- Document custom workflows specific to your projects

---

**See Also**: [Quick Reference](quick-reference.md) • [Command Documentation](commands/) • [Troubleshooting Guide](troubleshooting.md)