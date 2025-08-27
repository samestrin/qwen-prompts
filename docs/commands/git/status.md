# /git:status - Comprehensive Repository Status

## Overview

Displays current repository status with enhanced analysis and actionable recommendations. This command provides comprehensive information about staged changes, unstaged changes, untracked files, branch status, and intelligent suggestions for next steps in your workflow.

## Usage Examples

### Check repository status
```qwen
/git:status
```
### Get status with analysis and recommendations
```qwen
/git:status
```
## Arguments

This command takes no specific arguments and analyzes the entire repository state, providing comprehensive status information and recommendations.

## Security Considerations

> **Note:** This command reads repository state and file information. Security measures include:
> - **File Privacy:** Respects .gitignore patterns and exclusions
> - **Access Control:** Validates file permissions and access patterns
> - **Sensitive Data:** Identifies potentially sensitive files in changes
> - **Standards Compliance:** Follows project-specific security guidelines

## Related Resources

- [/git:add](add.md) - Stage files based on status analysis
- [/git:commit](commit.md) - Create commits after status review
- [/git:branch](branch.md) - Branch management and switching
- [/git:push](push.md) - Push changes to remote repositories
- [/git:pull](pull.md) - Pull changes from remote repositories