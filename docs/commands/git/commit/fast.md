# /git:commit:fast

## Overview

The `/git:commit:fast` command creates Git commits quickly with minimal processing and validation. This fast version bypasses standards checking, message validation, and recommendations to provide immediate commit creation for rapid development workflows.

## Usage Examples

### Quick commit with specific message
```
/git:commit:fast "fix: resolve timeout issues"
```

### Auto-generate simple commit message
```
/git:commit:fast
```
Generates a simple message like "Update [files]" based on staged files.

### Rapid development workflow
```
/git:commit:fast "wip: working on feature"
```
Quickly commit work-in-progress changes without validation overhead.

## Arguments

- `message`: **Optional** - The commit message to use directly without validation or formatting. If not provided, generates a simple message based on staged files

## Security Considerations

> **Warning:** This command creates permanent Git history records with minimal validation. Ensure that:
> - Staged changes don't contain sensitive information
> - You understand what changes are being committed
> - Fast commits are appropriate for your workflow

The fast commit process:
- Checks for staged changes before proceeding
- Uses provided message directly without validation
- Generates simple auto-messages when none provided
- Provides immediate commit creation without standards checking
- Shows commit hash and brief confirmation

## Related Resources

- [/git:commit](../commit.md) - Full commit creation with standards checking
- [/git:add](../add.md) - Stage files before committing
- [/git:add:fast](../add/fast.md) - Fast file staging without analysis
- [/git:status](../status.md) - Check repository status before committing