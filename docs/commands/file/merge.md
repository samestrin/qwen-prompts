# /file:merge - File Merging Utility

## Overview

Merges multiple files into a single output file. This command is useful for combining related content from different files, such as merging multiple analysis reports, documentation files, or code snippets into a consolidated document.

## Usage Examples

### Merge files into a single document
```qwen
/file:merge @file1.md @file2.md into @combined-report.md
```

### Merge folder contents into a single file
```qwen
/file:merge @folder into @consolidated-document.md
```

### Merge with date-stamped filename
```qwen
/file:merge @analysis1.md @analysis2.md into @report-[date].md
```

### Merge with date and time-stamped filename
```qwen
/file:merge @notes1.md @notes2.md into @summary-[date]-[time].md
```

## Arguments

- `@source_files`: **Required** - One or more source files or folders to merge, prefixed with `@`
- `into`: **Required** - Keyword indicating the destination file follows
- `@destination_file`: **Required** - The output filename to save the merged content to, prefixed with `@`

## Security Considerations

> **Note:** This command merges and saves content to files on your local system. Ensure that sensitive information in merged files is handled appropriately according to your security requirements.

The file merging process:
- Retrieves the content from specified source files or folders
- Combines content into a single document
- Writes the merged content to the specified destination file
- Supports date and time placeholders in filenames
- Provides confirmation of successful merge operation
- Handles file path creation and error management

## Related Resources

- [/file:save](save.md) - Save single response to a file
- [/analyze:security](../analyze/security.md) - Security reports that might need merging
- [/code:review](../code/review.md) - Code review findings that might need consolidation
- [/docs:generate-from-standard](../docs/generate-from-standard.md) - Generated documentation that might need merging