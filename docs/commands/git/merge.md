# /git:merge

## Overview

Merges branches following coding standards and best practices. This command safely merges specified branches into the current branch with proper validation, conflict resolution guidance, and adherence to project merge strategies.

## Usage Examples

### Merge feature branch into current branch
```
/git:merge feature/user-authentication
```

### Squash merge a feature branch
```
/git:merge --squash feature/small-fix
```

### Get merge guidance
```
/git:merge
```

## Arguments

- `branch-name`: **Optional** - Branch to merge into current branch
- If no arguments provided, provides guidance on merge options
- Supports merge options like `--squash` when specified

## Security Considerations

> **Warning:** Merge operations can significantly impact repository state and code integrity. Ensure that:
> - Target branch exists and is accessible
> - Current branch is clean before merging
> - Merge conflicts are resolved properly
> - Merged code follows project standards

The merge process:
- Validates merge operation before executing
- Reads project coding standards for merge strategies
- Provides guidance on conflict resolution
- Follows project-specific merge policies
- Ensures proper branch management and cleanup

## Related Resources

- [/git:branch](branch.md) - Manage branches before merging
- [/git:status](status.md) - Check repository state before merge
- [/git:commit](commit.md) - Create commits after merge
- [/git:push](push.md) - Push merged changes