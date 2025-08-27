# /git:branch

## Overview

Manages Git branches following coding standards and best practices. This command helps create, switch, list, and delete branches while ensuring proper naming conventions and safe operations based on project-specific guidelines.

## Usage Examples

### List all branches
```
/git:branch
/git:branch list
```

### Create a new feature branch
```
/git:branch create feature/user-authentication
```

### Switch to an existing branch
```
/git:branch switch main
/git:branch feature/new-feature
```

### Delete a branch
```
/git:branch delete feature/old-feature
```

## Arguments

- `action`: **Optional** - The branch operation to perform (list, create, switch, delete, rename, current)
- `branch-name`: **Optional** - Name of the branch to operate on
- If no arguments provided, lists all branches
- If single argument provided, switches to that branch

## Security Considerations

> **Note:** Branch operations affect repository structure and collaboration workflows. Ensure that:
> - Branch names don't contain sensitive information
> - Uncommitted changes are handled safely during operations
> - Branch naming follows project conventions

The branch management process:
- Checks for uncommitted changes before operations
- Reads project coding standards for naming conventions
- Validates branch names against project guidelines
- Provides safety warnings for potentially destructive operations
- Ensures proper branch creation from correct base branches

## Related Resources

- [/git:status](status.md) - Check repository status before branch operations
- [/git:merge](merge.md) - Merge branches following project strategies
- [/git:push](push.md) - Push branches following project policies
- [/git:add](add.md) - Stage changes before switching branches