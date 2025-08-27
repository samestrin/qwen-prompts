# /create:tutorial - Codebase Tutorial Generator

## Overview

Analyzes codebases and creates comprehensive, practical tutorials with real working examples. This command generates step-by-step tutorials covering feature implementation, setup guides, architecture explanations, and testing procedures based on actual project code.

## Usage Examples

### Feature implementation tutorial
```qwen
/create:tutorial Create a tutorial on implementing user authentication
```

### Setup guide
```qwen
/create:tutorial Create a beginner's guide to setting up the development environment
```

### Architecture explanation
```qwen
/create:tutorial Explain the microservices architecture used in this project
```

### Testing tutorial
```qwen
/create:tutorial Create a tutorial on writing and running tests for this application
```

## Arguments

- `args`: **Required** - Description of the tutorial topic, feature, or concept to create documentation for

## Security Considerations

> **Note:** This command performs read-only analysis of your codebase to generate educational content. It does not modify any files or execute any code during tutorial generation.

The tutorial generation process includes:
- Automatic detection of project source directories and structure
- Analysis of existing code patterns and implementations
- Creation of step-by-step instructions with real code examples
- Integration of project-specific configurations and best practices
- Practical examples drawn from the actual codebase

## Related Resources

- [/code:analysis](../code/analysis.md) - Comprehensive codebase analysis
- [/docs:generate-from-standard](../docs/generate-from-standard.md) - Documentation generation
- [/create:prd](prd.md) - Product Requirements Document creation