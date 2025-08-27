# /git:add:fast - Fast Git File Staging

## Overview

Quickly stages files for Git commit with minimal processing and no analysis. This fast version eliminates file validation, intelligent staging decisions, and project standards checking to provide immediate staging operations. Ideal for situations where speed is prioritized over analysis.

## Usage Examples

Stage specific files quickly:

```qwen
/git:add:fast src/main.py README.md
```

Stage all changes quickly:

```qwen
/git:add:fast
```

Stage all changes in current directory:

```qwen
/git:add:fast .
```

## Arguments

- `files`: **Optional** - Specific files or directories to stage. If not provided, stages all changes. Can also accept "all" or "." to stage all changes. No validation or analysis is performed on the specified files.

## Security Considerations

> **Warning:** This command performs fast staging without analysis or validation. Ensure that:
> - You trust the files being staged
> - Sensitive files are properly excluded via .gitignore
> - You understand what changes are being staged

The fast staging process:
- Executes git add commands directly without validation
- Does not check .gitignore patterns or project standards
- Provides minimal feedback about staging operations
- Skips all analysis and recommendations

## Related Resources

- [/git:add](../add.md) - Full-featured staging with analysis and validation
- [/git:commit](../commit.md) - Create commits using conventional commit format
- [/git:commit:fast](../commit/fast.md) - Fast commit creation without standards checking
- [/git:status](../status.md) - Check repository status before staging
- [/git:status:fast](../status/fast.md) - Quick status check without analysis