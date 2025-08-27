# /initialize:planning - Project Planning Structure Setup

## Overview

Creates a standardized project planning directory structure for new projects. This command sets up organized directories for sprints, analysis, specifications, and prompts to support the qwen-prompts workflow. The structure includes active and completed sprint tracking, technical analysis storage, project specifications, and custom prompt templates, all with comprehensive README files explaining usage and integration.

## Usage Examples

### Initialize basic planning structure
```qwen
/initialize:planning
```

### Initialize with custom project name
```qwen
/initialize:planning MyProject
```

### Initialize for enterprise project
```qwen
/initialize:planning CorporateApp
```

### Initialize for open source project
```qwen
/initialize:planning OpenSourceTool
```

## Arguments

- `args`: Optional project name to customize the planning structure and documentation. If not provided, generic project references will be used.

## Security Considerations

> **Important:** The planning directory structure is automatically excluded from version control via .gitignore to prevent accidental exposure of internal planning documents, specifications, and strategic information.

The planning structure includes:
- Sprint planning and progress tracking
- Technical analysis and research documentation
- Project specifications and requirements
- Custom prompt templates and workflows
- Proper .gitignore configuration for security

**Created Directory Structure:**
```
planning/
├── sprints/
│   ├── active/          # Current sprint plans
│   └── completed/       # Archived completed sprints
├── analysis/            # Technical analysis and research
├── specifications/      # Project requirements (PRD, TDD)
└── prompts/             # Custom project prompts _(tbd)_
```

## Related Resources

- [/create:sprint](../create/sprint.md) - Create development sprints
- [/create:prd](../create/prd.md) - Create product requirements
- [/create:tdd](../create/tdd.md) - Create technical design documents
- [/initialize:coding-rules](coding-rules.md) - Generate coding rules from specs