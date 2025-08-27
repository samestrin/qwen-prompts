# /docs:generate-from-standard - Documentation Generator from Standards

## Overview

Generates new documentation by following specific documentation standards and templates. This command reads existing documentation standards, analyzes the target codebase, and creates new documents that conform to the specified format, structure, and style guidelines.

## Usage Examples

### Generate docs using a standard template
```qwen
/docs:generate-from-standard Using the template @docs/api_standard.md. The codebase is in the current directory.
```

### Generate module-specific documentation
```qwen
/docs:generate-from-standard For the 'utils' module, following the standard @docs/module_standard.md. The code is in @src/utils/.
```

### Generate API documentation
```qwen
/docs:generate-from-standard For REST API endpoints, using @docs/api_template.md as the standard. Analyze @src/api/
```

### Generate CLI tool documentation
```qwen
/docs:generate-from-standard For CLI commands, following @docs/cli_standard.md. The commands are in @src/commands/
```

## Arguments

- `args`: **Required** - Specify the documentation standard/template file to follow and the code/project area to document

## Security Considerations

> **Note:** This command performs read-only analysis of code and documentation templates to generate new documentation. It does not modify existing code or execute any external commands.

The documentation generation process includes:
- Analysis of the provided documentation standard/template
- Codebase examination to extract relevant information
- Content generation following the exact structure and format specified
- Style consistency enforcement based on the template guidelines
- Integration of code examples and API references from the actual codebase

## Related Resources

- [/docs:create-standard](create-standard.md) - Create documentation standards and templates
- [/docs:update-standard](update-standard.md) - Update existing documentation standards
- [/create:tutorial](../create/tutorial.md) - Generate tutorials from codebase analysis