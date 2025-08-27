# /initialize:coding-standard - Base Coding Standard Template

## Overview

Creates a comprehensive base coding standard template that serves as the foundation for generating platform-specific coding rules. This command analyzes the current project structure, technology stack, and development context to create a customizable template covering code quality standards, documentation requirements, testing strategies, and development workflows. The resulting template can be used to generate platform-specific rules with consistent standards.

## Usage Examples

### Create general coding standard
```qwen
/initialize:coding-standard
```

### Create standard for specific project type
```qwen
/initialize:coding-standard For a Python web API project
```

### Create standard for microservices architecture
```qwen
/initialize:coding-standard For a Node.js microservices project with Docker deployment
```

### Create standard for frontend application
```qwen
/initialize:coding-standard For a React TypeScript application with modern tooling
```

## Arguments

- `args`: Optional description of the project type or specific context to tailor the coding standard template

## Security Considerations

> **Important:** The coding standard template includes security guidelines and practices. Ensure these align with your organization's security policies and compliance requirements before adoption.

The template covers:
- Code quality and structure standards
- Naming conventions and consistency rules
- Documentation and commenting requirements
- Testing standards and coverage requirements
- Error handling and security practices
- Performance and optimization guidelines
- Version control and collaboration workflows

**Generated File:** `CODING_STANDARD.md`

## Related Resources

- [/initialize:coding-rules](coding-rules.md) - Generate platform-specific rules from standard
- [/initialize:update-coding-rules](update-coding-rules.md) - Update existing coding rules
- [/initialize:planning](planning.md) - Set up project planning structure