# Quick Reference Guide

A comprehensive cheat sheet for all qwen-prompts commands, organized by most common use cases and workflows.

## Most Used Commands

### Quick Start Commands
```qwen
> /analyze:repo                   # Get project overview and statistics
> /code:analysis                  # Analyze codebase architecture  
> /code:quality                   # Check code quality metrics
> /file:save @report.md           # Save previous command's output (run after other commands)
> /file:merge @file1.md @file2.md into @combined.md  # Merge multiple files into one output file
> /git:status                     # Check git repository status
> /git:status:fast                # Quick status check
> /git:add .                      # Stage all changes
> /git:add:fast .                 # Quick staging
> /git:commit "fix: resolve issue"  # Commit with conventional format
> /git:commit:fast "fix: issue"   # Quick commit
```

### Analysis Commands
```qwen
> /analyze:dependency             # Analyze project dependencies
> /analyze:security               # Security vulnerability assessment (professional report)
> /analyze:security --comprehensive # Detailed technical security analysis
> /analyze:performance            # Performance bottleneck analysis
> /analyze:tech-debt              # Technical debt analysis
> /analyze:vulnerabilities        # Dependency vulnerability scanning
> /analyze:implementation Has X?  # Check if feature X is implemented
```

### Code Quality Commands
```qwen
> /code:analysis                  # Comprehensive codebase analysis (professional report)
> /code:analysis --comprehensive   # Detailed technical analysis
> /code:quality                   # Code quality and best practices
> /code:review                    # Detailed code review with severity
```

### Project Creation Commands
```qwen
> /create:prd for feature X       # Create Product Requirements Document
> /create:tdd                     # Create Technical Design Document (requires PRD)
> /create:cost-analysis           # Generate cost analysis report (requires TDD)
> /create:sprint Implement X      # Generate sprint plan
> /create:tutorial on X           # Create tutorial documentation
```

### Documentation Commands
```qwen
> /docs:create-standard for X     # Create documentation standards and template
> /docs:generate-from-standard for X using @planning/specifications/documentation.md  # Generate docs following specific standards
> /docs:update-standard @existing-docs.md using @planning/specifications/documentation.md  # Update existing docs to conform to standards
```

### Git Commands
```qwen
> /git:status                     # Check repository status with recommendations
> /git:status:fast                # Quick status check
> /git:add [files]                # Stage files for commit
> /git:add:fast [files]           # Quick file staging
> /git:commit [message]           # Commit using project standards or conventional format
> /git:commit:fast [message]      # Quick commit without standards checking
> /git:branch [action] [name]     # Manage branches
> /git:merge [branch]             # Merge branches safely
> /git:pull [remote] [branch]     # Pull changes from remote
> /git:push [remote] [branch]     # Push changes to remote
```

## Command Categories Quick Reference

| Category | Commands | Primary Use Case |
|----------|----------|------------------|
| **Analysis** | `dependency` `implementation` `performance` `repo` `security` `tech-debt` `vulnerabilities` | Understanding codebase state |
| **Code** | `analysis` `quality` `review` | Code quality assessment |
| **Compare** | `dirs` `files` | Comparing implementations |
| **Create** | `cost-analysis` `prd` `sprint` `tdd` `tutorial` | Documentation generation |
| **Docs** | `create-standard` `generate-from-standard` `update-standard` | Documentation standards |
| **Find** | `patterns` | Code pattern discovery |
| **File** | `delete` `merge` `save` | File operations and preserving command outputs |
| **Git** | `add` `branch` `commit` `merge` `pull` `push` `status` | Git repository management |
| **Initialize** | `coding-rules` `coding-standard` `gitignore` `planning` `update-coding-rules` | Project setup |
| **Single** | `analyze:security` `code:analysis` | Benchmarking |
| **Strategy** | `extract-business-logic` `plan` | Strategic planning |
| **Test** | `coverage` `review-and-correct` | Testing analysis |

## Common Command Patterns

### Analysis with Arguments
```qwen
> /analyze:security focusing on authentication
> /analyze:performance focusing on database queries
> /code:quality focusing on naming conventions
> /analyze:dependency focusing on npm dependencies
```

### File/Directory Targeting
```qwen
> /code:analysis @src/api/        # Analyze specific directory
> /compare:files @old.js @new.js  # Compare specific files
> /create:tutorial for @auth/     # Create tutorial for directory
```

### Workflow Chaining

You can chain together different commands to save responses or even create more complex analyses. For example:

```qwen
> /analyze:repo                   # 1. Get project overview and statistics
> /file:save @repo-analysis.md    # 2. Save the repo analysis output from previous command
```

```qwen
> /code:review                    # 1. Perform detailed code review
> /create:sprint Based on the previous response, focus on Immediate Improvements # 2. Create sprint plan based on review findings
```

```qwen
> /analyze:security               # 1. Perform security analysis
> /analyze:vulnerabilities Based on he previous response, focus on Missing Security Measures # 2. Analyze vulnerabilities based on security findings
> /file:save @security-report.md  # 3. Save the combined security analysis output from previous commands
```

```qwen
# Process large projects in chunks and merge results
> /analyze:dependency focusing on npm dependencies  # 1. Analyze project dependencies
> /file:save @dependency-analysis.md                # 2. Save dependency analysis

> /code:analysis @src/auth/                         # 3. Analyze auth module
> /file:save @code-analysis-auth.md                 # 4. Save auth analysis

> /code:analysis @src/api/                          # 5. Analyze API module
> /file:save @code-analysis-api.md                  # 6. Save API analysis

> /code:analysis @src/ui/                           # 7. Analyze UI module
> /file:save @code-analysis-ui.md                   # 8. Save UI analysis

# Merge all analysis files into a single report and delete source files
> /file:merge @dependency-analysis.md @code-analysis-auth.md @code-analysis-api.md @code-analysis-ui.md into @merged-report.md, then delete the source files  # 9. Merge all analyses into final report
```

### Advanced Commands

Sophisticated usage patterns for complex operations:

```qwen
# Wildcard merging with cleanup
> /file:merge @source1/*.md @source2.md into @destination.md, then delete the source files that were merged

# Conditional analysis chaining
> /analyze:security focusing on authentication
> /analyze:vulnerabilities Based on the previous response, focus on Missing Security Measures
> /create:sprint Based on the previous response, prioritize Critical Security Issues

# Multi-stage project analysis with dated reports
> /analyze:repo
> /file:save @reports/repo-analysis-[date].md
> /code:review focusing on security patterns
> /file:save @reports/security-review-[date].md
> /file:merge @reports/*-[date].md into @reports/comprehensive-audit-[date].md

# Directory-based analysis with consolidation
> /code:analysis @src/auth/ focusing on security
> /save:file @code-analysis/auth.md
> /code:analysis @src/api/ focusing on performance
> /save:file @code-analysis/api.md
> /code:analysis @src/ui/ focusing on accessibility
> /save:file @code-analysis/ui.md
> /file:merge @code-analysis/ into @consolidated-analysis.md, then delete the folder and source files that were merged
```

## Command Arguments Guide

### Optional Arguments (Most Commands)
- **Focus Areas**: `Focusing on X` - Narrow analysis scope
- **Specific Context**: `For X` - Target specific feature/module
- **Comparison**: `Between X and Y` - Compare implementations

### Required Arguments
- **`/create:prd`**: Feature description (required)
- **`/create:sprint`**: Sprint goal/task description (required)
- **`/file:save`**: Filename (required) - Saves previous command's output
- **`/file:merge`**: Source files/folders and destination file (required) - Format: `@source1 @source2 into @destination` or `@folder into @destination`
- **`/initialize:gitignore`**: Languages/frameworks (required)
- **`/initialize:coding-rules`**: Platform list (required)

### File/Directory References
```qwen
> @path/to/file.js              # Reference specific file
> @src/                         # Reference directory
> @file1.js @file2.js           # Multiple file references
```

## Shell Integration Commands

### Commands with Shell Execution
```qwen
> /analyze:repo                   # Extensive shell commands for repo stats
> /create:sprint                  # Shell integration for project analysis
> /initialize:gitignore           # File creation
> /initialize:coding-rules        # Multi-file generation
> /file:save                      # Saves previous command's output to file
> /file:merge                     # Merges multiple files into one output file
> /git:*                          # All git commands execute git shell commands
```

### Safety Notes
- Review shell commands in TOML files before first use
- Shell commands are read-only analysis (except initialize/save commands)
- Always verify file paths and permissions

## Performance Tips

### Efficient Command Usage
```qwen
# Fast overview
> /analyze:repo

# Focused analysis (faster than broad analysis)
> /analyze:security Focusing on authentication
> /code:quality Focusing on specific module

# Batch related analysis
> /analyze:security 
> /analyze:vulnerabilities From the previous response
```

### Save Important Results
```qwen
# Always save comprehensive reports
> /code:review 
> /file:save @code-review.md  # Save code review output with date

# Create dated reports for tracking
> /analyze:security 
> /file:save @security-audit-[date].md  # Save security audit with date. [date] is replaced with the current date in the format YYYYMMDD, [time] is current time in HHMMSS.

# Merge multiple analysis files
> /file:merge @analysis1.md @analysis2.md into @combined-report.md  # Merge multiple files into one

# Merge folder contents into a single file
> /file:merge @folder into @consolidated-document.md  # Merge all files from a directory

# Merge with cleanup option
> /file:merge @temp1.md @temp2.md @temp3.md into @final-report.md, then delete the source files  # Merge and clean up source files
```

## Integration Patterns

### New Project Setup
```qwen
> /initialize:planning              # 1. Set up project structure
> /initialize:coding-standard       # 2. Create coding standards
> /initialize:coding-rules all      # 3. Generate platform rules
> /initialize:gitignore node, react # 4. Create .gitignore
```

### Project Improvement Flow
```qwen
> /analyze:repo                                    # 1. Project overview
> /strategy:plan Based on the previous response, create a plan to resolve the Immediate Improvements # 2. Create sprint plan from the repo analysis
> /file:save @planning/plans/immediate_improvements.md  # 3. Save the improvement plan from previous command
```

### Sprint Creation Flow
```qwen
> /analyze:repo                                    # 1. Project overview
> /strategy:plan Based on the previous response, create a plan to resolve the Immediate Improvements  # 2. Create sprint plan from the repo analysis
> /create:sprint Based on the previous response    # 3. Create sprint plan from the improvement strategy, creates a new file in /planning/sprints/active/
```

### Security Review Process
```qwen                 
> /analyze:vulnerabilities                         # 1. Vulnerability scanning
> /analyze:security Based on the last response     # 2. Security analysis
> /file:save @planning/reports/security-report.md  # 3. Save comprehensive report from previous commands
```

### Git Workflow Patterns
```qwen
# Feature development workflow

> /git:status                                      # 1. Check current status
> /git:status:fast                                 # 1. Quick status check

> /git:branch create feature/new-feature           # 2. Create feature branch

> /git:add .                                       # 3. Stage changes
> /git:add:fast .                                  # 3. Quick staging

> /git:commit "feat: add new feature"              # 4. Commit with conventional format
> /git:commit:fast "feat: add new feature"         # 4. Quick commit

> /git:push origin feature/new-feature             # 5. Push to remote

# Code review and merge workflow
> /git:pull origin main                            # 1. Update main branch
> /git:merge feature/new-feature                   # 2. Merge feature branch
> /git:push origin main                            # 3. Push merged changes
> /git:branch delete feature/new-feature           # 4. Clean up feature branch
```

## Troubleshooting Quick Fixes

### Command Not Found
- Verify command spelling and category (e.g., `/analyze:security` not `/analyze:sec`) - autocomplete helps with this
- Check if command file exists in `~/.qwen/commands/`

### No Results/Empty Output
- Try broader scope (remove focusing arguments)
- Verify target files/directories exist
- Check if project has relevant content for analysis

### Shell Permission Issues
- Review shell commands in TOML files
- Ensure file system permissions are correct
- Test in isolated environment first

### Performance Issues
- Use focused arguments to narrow scope
- Target specific directories instead of entire project
- Consider using single-shot variants for comparison

---

**See Also**: [Complete Documentation](commands/) • [Common Workflows](workflows.md) • [Troubleshooting Guide](troubleshooting.md)