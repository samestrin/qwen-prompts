# /docs:update-standard - Documentation Standard Updater

## Overview

Updates existing documentation files to conform to specified documentation standards. This command supports different update types ranging from simple formatting changes to complete content rewrites while maintaining consistency with established documentation standards.

## Usage Examples

### Format-only update
```qwen
/docs:update-standard Perform a 'format-only' update on @docs/old_api.md using the standard @docs/api_standard.md
```

### Content refresh with current code
```qwen
/docs:update-standard Do a 'content-refresh' on the user guide @docs/guide.md with the standard @docs/style_guide.md
```

### Complete rewrite based on current codebase
```qwen
/docs:update-standard Execute a 'full-rewrite' of @README.md using the template @docs/readme_standard.md
```

### Update multiple files to standard
```qwen
/docs:update-standard Apply 'content-refresh' to @docs/api.md @docs/cli.md using @docs/unified_standard.md
```

## Arguments

- `args`: **Required** - Specify the update type (format-only, content-refresh, full-rewrite), target documentation files, and the standard/template to follow

## Security Considerations

> **Note:** This command modifies existing documentation files to conform to standards. It analyzes current code to ensure documentation accuracy but does not execute or modify application code.

The update process supports:
- **Format-only:** Restructures existing content to match standard formatting
- **Content-refresh:** Updates code examples and references while preserving core content
- **Full-rewrite:** Complete regeneration based on current codebase and standard template
- Analysis of current codebase to ensure documentation accuracy
- Preservation of custom content where appropriate

## Related Resources

- [/docs:create-standard](create-standard.md) - Create new documentation standards
- [/docs:generate-from-standard](generate-from-standard.md) - Generate new documentation from standards
- [/create:tutorial](../create/tutorial.md) - Create tutorials from codebase analysis