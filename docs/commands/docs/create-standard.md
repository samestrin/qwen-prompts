# /docs:create-standard - Documentation Standard Creator

## Overview

Creates comprehensive documentation standards and templates based on best practices and existing documentation analysis. This command can generate standards from descriptions or analyze existing documentation files to infer consistent styles and create standardized templates.

## Usage Examples

### Generate standard from description
```qwen
/docs:create-standard For a public-facing REST API documentation
```

### Create standard from existing files
```qwen
/docs:create-standard For our Python CLI tools, using these files as a style reference @doc1.md @doc2.md
```

### Industry-specific standard
```qwen
/docs:create-standard For enterprise software documentation with compliance requirements
```

### Open source project standard
```qwen
/docs:create-standard For open source project documentation including contribution guidelines
```

## Arguments

- `args`: **Required** - Description of the documentation type and context, optionally including reference files to analyze for style consistency

## Security Considerations

> **Note:** This command analyzes existing documentation files when provided and generates documentation standards. It performs read-only analysis of specified files.

The standard creation process includes:
- Analysis of provided reference documentation files
- Best practice integration for the specified documentation type
- Template generation with consistent formatting guidelines
- Style guide creation based on existing patterns
- Quality checklist development for documentation maintenance

## Related Resources

- [/docs:generate-from-standard](generate-from-standard.md) - Generate documentation using standards
- [/docs:update-standard](update-standard.md) - Update existing documentation standards
- [/create:tutorial](../create/tutorial.md) - Tutorial generation from codebase

## See Also

### Documentation Standardization Workflow
1. **Create Standard**: [/docs:create-standard](create-standard.md) - Establish documentation standards
2. **Generate Documentation**: [/docs:generate-from-standard](generate-from-standard.md) - Create docs following standards
3. **Maintain Consistency**: [/docs:update-standard](update-standard.md) - Keep documentation aligned with standards
4. **Save Standards**: [/file:save](../save/file.md) - Preserve documentation standards for reuse

### Integration with Project Initialization
- [/initialize:planning](../initialize/planning.md) - Set up project structure with documentation directories
- [/initialize:coding-standard](../initialize/coding-standard.md) - Create coding standards that align with documentation
- [/initialize:coding-rules](../initialize/coding-rules.md) - Generate platform rules that include documentation requirements

### Content Creation Integration
- [/create:tutorial](../create/tutorial.md) - Create tutorials following documentation standards
- [/create:prd](../create/prd.md) - Document requirements using established standards
- [/create:tdd](../create/tdd.md) - Technical documentation following standards