# /create:sprint - Sprint Plan Generator

## Overview

Analyzes feature requests and project context to generate detailed and actionable sprint plans. This command automatically detects project structure, analyzes existing code, and creates comprehensive sprint documentation with tasks, timelines, and implementation guidance.

## Usage Examples

### New feature sprint
```qwen
/create:sprint Implement user authentication with JWT
```

### Bug fix sprint
```qwen
/create:sprint Fix performance issues in the dashboard loading
```

### Refactoring sprint
```qwen
/create:sprint Migrate from REST API to GraphQL endpoints
```

### Infrastructure sprint
```qwen
/create:sprint Set up CI/CD pipeline with automated testing and deployment
```

## Arguments

- `args`: **Required** - Description of the feature, bug fix, refactoring, or other development work to plan

## Security Considerations

> **Important:** This command uses shell execution for project analysis and automatic sprint numbering. It only reads existing files and creates new sprint documentation - no existing code is modified.

The sprint generation process includes:
- Automatic detection of project source directories
- Analysis of existing codebase structure and patterns
- Integration with project planning directory structure
- Automatic sprint numbering based on existing sprint files
- Comprehensive task breakdown with implementation guidance

**Shell execution used for:**
- Project structure analysis via package configuration files
- Sprint number detection and increment automation
- File system navigation for context gathering

## Related Resources

- [/create:tdd](tdd.md) - Technical Design Document creation
- [/create:prd](prd.md) - Product Requirements Document creation
- [/strategy:plan](../strategy/plan.md) - Strategic planning utilities