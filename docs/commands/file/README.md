# File Management Commands

File management and output preservation tools for saving analysis results, documentation, and command outputs to persistent storage. These commands help maintain project documentation and preserve valuable analysis insights. The file commands should be run after other commands to save their output.

## Commands Overview

### [save](save.md) - Response Output Saving
Saves the last response from qwen-code to a user-specified filename, enabling preservation of analysis results, code reviews, and documentation outputs. This command should be run immediately after the command whose output you want to save.

### [delete](delete.md) - Safe File and Directory Deletion
Safely deletes files and directories with interactive confirmation and detailed analysis. Provides comprehensive information about deletion targets before requiring explicit user confirmation.

### [merge](merge.md) - File Merging Utility
Merges multiple files or folder contents into a single output file, enabling consolidation of related content from different sources. This command is useful for combining multiple analysis reports, documentation files, or code snippets into a comprehensive document.

**Common Use Cases:**
- Preserving security audit reports
- Saving code review findings
- Creating persistent documentation from analysis
- Archiving planning and strategy outputs
- Building documentation libraries
- Maintaining analysis history and tracking

## Save Workflows

### Analysis Documentation
```
qwen
```

```qwen
# 1. Perform comprehensive security analysis
> /analyze:security

# 2. Save security analysis report
> /file:save @security-audit-report.md

# 3. Perform code quality review
> /code:review

# 4. Save code review findings
> /file:save @code-review-findings.md
```

### Project Assessment Archive
```
qwen
```

```qwen
# 1. Generate repository analysis
> /analyze:repo

# 2. Save repository assessment
> /file:save @repository-assessment.md

# 3. Analyze technical debt
> /analyze:tech-debt

# 4. Save technical debt report
> /file:save @technical-debt-analysis.md
```

### Planning Documentation
```
qwen
```

```qwen
# 1. Create strategic plan
> /strategy:plan to implement user authentication system

# 2. Save strategic plan
> /file:save @authentication-implementation-plan.md

# 3. Create project requirements
> /create:prd for the authentication system

# 4. Save project requirements
> /file:save @authentication-prd.md
```

### Code Analysis Archive
```
qwen
```

```qwen
# 1. Analyze codebase architecture
> /code:analysis

# 2. Save architecture analysis
> /file:save @codebase-architecture-analysis.md

# 3. Find performance patterns
> /find:patterns Find all performance bottlenecks and optimization opportunities

# 4. Save performance analysis
> /file:save @performance-patterns-report.md
```

### Testing and Quality Documentation
```
qwen
```

```qwen
# 1. Analyze test coverage
> /test:coverage

# 2. Save coverage report
> /file:save @test-coverage-analysis.md

# 3. Review and correct test issues
> /test:review-and-correct

# 4. Save test improvement plan
> /file:save @test-improvement-plan.md
```

## Command Relationships

### Documentation Workflow Integration
- **Analysis Preservation**: Save outputs from all [analyze](../analyze/) commands for future reference
- **Code Review Archive**: Preserve [code](../code/) command results for historical tracking
- **Strategic Planning**: Archive [strategy](../strategy/) outputs for project management
- **Testing Documentation**: Save [test](../test/) results for quality assurance records

### Project Documentation
- **Creation Outputs**: Save [create](../create/) command results as project artifacts
- **Comparison Reports**: Preserve [compare](../compare/) analysis for decision documentation
- **Pattern Analysis**: Archive [find](../find/) results for technical debt tracking
- **Standards Documentation**: Save [initialize](../initialize/) outputs as project standards

## Tips and Best Practices

### File Naming Conventions
- Use descriptive, date-stamped filenames for easy identification
- Include project context and analysis type in filenames
- Consider using consistent prefixes for different types of documentation
- Examples: `security-audit-2024-08-26.md`, `code-review-auth-module.md`

### Documentation Organization
- Create directory structures that reflect your documentation needs
- Group related analyses and reports together
- Maintain a documentation index or catalog
- Consider version control for important documentation

### Content Management
- Review saved content before finalizing to ensure completeness
- Add context and metadata to saved files when necessary
- Create summaries or executive summaries for complex analyses
- Link related documents and analyses together

### Workflow Integration
- Save intermediate results during complex multi-step analyses
- Create documentation templates for consistent formatting
- Establish regular documentation and archival schedules
- Use saved documentation to track progress and changes over time

### Quality Assurance
- Verify that saved content is complete and readable
- Ensure sensitive information is handled appropriately
- Maintain backups of important documentation
- Review and update documentation as projects evolve

## Related Resources

- **[Analysis Commands](../analyze/)** - Generate comprehensive reports for saving
- **[Code Quality Commands](../code/)** - Create quality assessments worth preserving
- **[Strategy Commands](../strategy/)** - Develop strategic plans requiring documentation
- **[Documentation Commands](../docs/)** - Create structured documentation for saving

---

**Navigation**: [← Initialization Commands](../initialize/) • [Single Commands →](../single/)