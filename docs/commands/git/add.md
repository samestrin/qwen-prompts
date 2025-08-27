# /git:add - Intelligent Git File Staging

## Overview

Stages files for Git commit using intelligent analysis and project-specific staging standards. The command analyzes the current repository state, respects .gitignore patterns, and follows project coding standards to determine what should be staged. It supports both specific file staging and intelligent "stage all" operations while avoiding temporary, build, or system files.

## Usage Examples

Stage specific files:

```qwen
/git:add src/main.py README.md
```

Stage all relevant changes intelligently:

```qwen
/git:add
```

Stage all changes in current directory:

```qwen
/git:add .
```

## Arguments

- `files`: **Optional** - Specific files or directories to stage. If not provided, intelligently determines what should be staged based on file types, relevance, and .gitignore patterns. Can also accept "all" or "." to stage all changes

## Security Considerations

> **Note:** This command executes Git operations and analyzes repository files. Ensure that:
> - Sensitive files are properly excluded via .gitignore
> - The command respects project-specific staging standards
> - File permissions and access controls are maintained

The command automatically:
- Respects .gitignore patterns and common exclusions
- Avoids staging temporary files, build artifacts, logs, or system files
- Checks project-specific staging standards from documentation files
- Provides clear feedback about staging decisions

## Related Resources

- [/git:commit](commit.md) - Create conventional commits after staging
- [/git:status](status.md) - Check repository status before staging
- [/git:branch](branch.md) - Manage branches with naming conventions
- [/git:push](push.md) - Push changes following project guidelines