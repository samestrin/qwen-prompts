# /git:push - Safe Remote Repository Publishing

## Overview

Safely pushes local changes to remote repositories following best practices and coding standards. This command validates push operations, checks branch status, applies appropriate push strategies, and provides comprehensive guidance for handling push conflicts while maintaining repository integrity.

## Usage Examples

### Push current branch to upstream
```qwen
/git:push
```

### Push specific branch to origin
```qwen
/git:push origin feature/new-feature
```

### Force push with lease (safer)
```qwen
/git:push --force-with-lease
```

### Set upstream and push new branch
```qwen
/git:push -u origin feature/new-feature
```

## Arguments

- `remote`: **Optional** - Remote repository name to push to
- `branch`: **Optional** - Specific branch to push
- `--force-with-lease`: **Optional** - Safer alternative to force push
- `-u, --set-upstream`: **Optional** - Set upstream tracking for new branches
- Additional Git push options as supported by the git push command



## Security Considerations

> **Note:** Push operations expose code to remote repositories and team members. This command implements security measures to ensure safe publishing:
> - **Access Validation:** Verifies push permissions and remote repository access
> - **Safe Force Operations:** Recommends `--force-with-lease` over `--force` for safer overwrites
> - **Branch Protection:** Respects branch protection rules and access controls
> - **Standards Compliance:** Ensures pushed code follows project security guidelines

## Related Resources

- [/git:commit](commit.md) - Create commits before pushing
- [/git:status](status.md) - Check repository state before push
- [/git:pull](pull.md) - Sync with remote before pushing
- [/git:branch](branch.md) - Branch management and switching
- [/git:add](add.md) - Stage changes for commit and push