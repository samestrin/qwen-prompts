# /initialize:coding-rules - Platform-Specific Coding Rules Generator

## Overview

Generates platform-specific coding rules files based on project specifications (TDD/PRD) and the base coding standard. This command analyzes project requirements, technology stack, and existing code patterns to create tailored coding guidelines for multiple AI platforms including Trae, Qwen, Claude, Gemini, and Cursor. Each platform receives customized rules that align with project context while maintaining consistency across platforms.

## Usage Examples

### Generate rules for multiple platforms
```qwen
/initialize:coding-rules trae, qwen, claude
```

### Generate rules for a single platform
```qwen
/initialize:coding-rules gemini
```

### Generate all common platform rules
```qwen
/initialize:coding-rules all
```

### Generate rules for cursor editor
```qwen
/initialize:coding-rules cursor
```

## Arguments

- `args`: **Required** - Comma-separated list of target platforms or 'all' for all supported platforms
  - **Supported platforms**: trae, qwen, claude, gemini, cursor, all
  - **Example**: `trae, qwen` or `all`

## Security Considerations

> **Important:** Generated coding rules may contain project-specific security requirements and patterns. Ensure the rules align with your security policies and don't expose sensitive architectural details.

The generation process includes:
- Analysis of project specifications (TDD/PRD)
- Technology stack detection and integration
- Platform-specific rule customization
- Consistency validation across platforms
- Integration with existing development workflow

**Generated Files:**
- `./trae/rules/project_rules.md` (for trae)
- `./QWEN.md` (for qwen)
- `./CLAUDE.md` (for claude)
- `./GEMINI.md` (for gemini)
- `./CURSOR.md` (for cursor)

## Related Resources

- [/initialize:coding-standard](coding-standard.md) - Create base coding standard
- [/initialize:update-coding-rules](update-coding-rules.md) - Update existing rules
- [/create:tdd](../create/tdd.md) - Technical design document creation