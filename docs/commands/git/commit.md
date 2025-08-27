# /git:commit - Conventional Commit Creation

## Overview

Creates Git commits using conventional commit format and project-specific coding standards. The command checks for staged changes, reads project commit standards from documentation files, and generates or validates commit messages following conventional commit conventions. If no project standards are found, it applies generic conventional commit rules.

## Usage Examples

Commit with specific message:

```qwen
/git:commit "feat(auth): add user authentication system"
```

Auto-generate commit message from staged changes:

```qwen
/git:commit
```

Commit with detailed description:

```qwen
/git:commit "fix(api): resolve timeout issues in user endpoint"
```

## Arguments

- `message`: **Optional** - The commit message to validate and format according to conventional commit standards. If not provided, analyzes staged changes to generate an appropriate conventional commit message

## Security Considerations

> **Warning:** This command creates permanent Git history records. Ensure that:
> - Commit messages don't contain sensitive information
> - Staged changes don't introduce security vulnerabilities
> - Proper validation is performed before committing

The commit process:
- Checks for staged changes before proceeding
- Reads project commit standards from documentation files
- Validates commit message format against conventional commit standards
- Provides clear feedback about the commit created
- Follows established project conventions and guidelines

## Related Resources

- [/git:add](add.md) - Stage files before committing
- [/git:status](status.md) - Check repository status before committing
- [/git:commit:fast](commit/fast.md) - Fast commit creation without standards checking
- [/git:push](push.md) - Push commits following project guidelines