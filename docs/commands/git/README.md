# Git Commands

Version control workflow automation and Git operation enhancement tools that integrate project coding standards with Git operations. These commands help maintain consistent commit practices, branch management, and code quality standards throughout the development lifecycle.

## Commands Overview

### [add](add.md) - Intelligent File Staging
Stages files for commit with intelligent analysis of changes, following project coding standards for file organization and naming conventions. Provides guidance on staging strategies and change validation.

### [branch](branch.md) - Branch Management
Creates, manages, and validates Git branches according to project-specific naming conventions and branching strategies defined in coding standards. Ensures consistent branch organization and workflow compliance.

### [commit](commit.md) - Standards-Based Commits
Creates Git commits that follow project-specific commit message standards and formatting requirements. Dynamically reads and applies commit conventions from project coding standards files.

### [merge](merge.md) - Strategic Merge Operations
Performs Git merge operations using project-defined merge strategies and conflict resolution approaches. Maintains commit history integrity while following project-specific merge policies.

### [pull](pull.md) - Synchronized Updates
Pulls remote changes while maintaining project-specific branch management policies and conflict resolution strategies. Ensures local branches stay synchronized with remote repositories.

### [push](push.md) - Controlled Publishing
Pushes local changes to remote repositories following project-specific policies for branch management, code review requirements, and merge strategies.

### [status](status.md) - Enhanced Status Reporting
Provides enhanced Git status information with analysis of changes against project coding standards, file organization guidelines, and naming conventions.

**Common Use Cases:**
- Maintaining consistent commit message formats
- Following project-specific branching strategies
- Ensuring code quality standards during Git operations
- Automating workflow compliance checks
- Integrating coding standards with version control
- Streamlining team collaboration workflows

## Git Workflows

### Feature Development
```
qwen
```

```qwen
# 1. Create feature branch following naming conventions
> /git:branch feature/user-authentication

# 2. Stage files with standards validation
> /git:add src/auth/

# 3. Commit with project-standard formatting
> /git:commit "feat: implement user authentication system"

# 4. Push following project policies
> /git:push
```

### Code Review Preparation
```
qwen
```

```qwen
# 1. Check status with standards analysis
> /git:status

# 2. Stage changes with validation
> /git:add .

# 3. Create standards-compliant commit
> /git:commit "fix: resolve authentication token validation"

# 4. Push for code review
> /git:push
```

### Release Integration
```
qwen
```

```qwen
# 1. Pull latest changes with conflict resolution
> /git:pull

# 2. Merge feature branch using project strategy
> /git:merge feature/user-authentication

# 3. Create release commit
> /git:commit "release: version 1.4.0 with authentication"

# 4. Push release
> /git:push
```

### Hotfix Workflow
```
qwen
```

```qwen
# 1. Create hotfix branch
> /git:branch hotfix/security-patch

# 2. Stage critical fixes
> /git:add src/security/

# 3. Commit with urgency indicators
> /git:commit "fix: critical security vulnerability in auth"

# 4. Push for immediate review
> /git:push
```

## Command Relationships

### Standards Integration
- **Coding Standards**: All commands dynamically read from `CODING_STANDARD.md` or similar files
- **Workflow Compliance**: Commands enforce project-specific Git workflows and policies
- **Quality Assurance**: Integration with code quality standards during Git operations
- **Team Collaboration**: Consistent practices across team members and projects

### Workflow Automation
- **Branch Management**: Automated branch naming and strategy enforcement
- **Commit Standards**: Dynamic commit message formatting and validation
- **Merge Strategies**: Project-specific merge and conflict resolution approaches
- **Code Review**: Integration with review processes and quality gates

## Tips and Best Practices

### Standards Configuration
- Maintain `CODING_STANDARD.md` with current Git workflow requirements
- Define clear commit message formats and branch naming conventions
- Specify merge strategies and conflict resolution approaches
- Document code review and quality gate requirements

### Workflow Consistency
- Use Git commands consistently across all team members
- Establish clear branching strategies for different types of work
- Maintain commit message consistency for better project history
- Follow established merge and release procedures

### Quality Integration
- Validate changes against coding standards before committing
- Use status commands to understand impact of changes
- Follow project-specific file organization and naming guidelines
- Integrate Git operations with continuous integration workflows

### Team Collaboration
- Establish shared understanding of Git workflows and standards
- Use consistent branch naming and commit message formats
- Follow established code review and merge procedures
- Maintain clear documentation of Git policies and procedures

## Related Resources

- **[File Management Commands](../file/)** - Save Git workflow documentation and analysis
- **[Code Quality Commands](../code/)** - Integrate quality checks with Git operations
- **[Analysis Commands](../analyze/)** - Analyze repository structure and Git history
- **[Documentation Commands](../docs/)** - Maintain Git workflow documentation

---

**Navigation**: [← File Management Commands](../file/) • [Initialize Commands →](../initialize/)