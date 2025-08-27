# /file:delete - Safe File and Directory Deletion

## Overview

Provides safe file and directory deletion with interactive confirmation and detailed analysis. This command implements multiple safety mechanisms to prevent accidental data loss, including comprehensive pre-deletion analysis and explicit user confirmation before any destructive operations.

## Usage Examples

### Delete a single file
```qwen
/file:delete @old-report.md
```

### Delete a directory
```qwen
/file:delete @temp-folder/
```

### Delete multiple items
```qwen
/file:delete @file1.txt @file2.txt @folder/
```

### Delete with analysis confirmation
```qwen
/file:delete @project/legacy/ @docs/old-version.md
```

## Arguments

- `<path>`: **Required** - File or directory path(s) to delete. Supports multiple paths separated by spaces.

## Security Considerations

> **Critical:** This command performs destructive file system operations. All deletions require explicit user confirmation after detailed analysis.

**Safety mechanisms include:**
- Interactive confirmation required before deletion
- Detailed pre-deletion analysis showing file contents and directory structure
- Scope restriction to current working directory only
- Graceful error handling for permission issues and missing files
- Warning alerts for system files, large directories, and important configuration files
- Prevention of critical system file deletion

**Best practices:**
- Always review analysis information carefully before confirming
- Consider backing up important files before deletion
- Use version control systems for code files when possible
- Be especially cautious with directory deletions containing many files

## Related Resources

- [/file:save](save.md) - Save content to files
- [/file:merge](merge.md) - Merge multiple files
- [/analyze:repo](../analyze/repo.md) - Analyze repository structure before cleanup