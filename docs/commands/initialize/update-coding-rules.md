# /initialize:update-coding-rules - Coding Rules Update Manager

## Overview

Updates existing platform-specific coding rules based on project evolution, new specifications, or changes in requirements. This command maintains consistency across all platform rule files by analyzing current project state, comparing with existing rules, identifying gaps and inconsistencies, and systematically updating all platform-specific coding guidelines. The update process includes backup creation, validation, and change documentation.

## Usage Examples

### Update all existing platform rules
```qwen
/initialize:update-coding-rules
```

### Update specific platform rules
```qwen
/initialize:update-coding-rules trae, claude
```

### Update rules based on new specifications
```qwen
/initialize:update-coding-rules --from-specs
```

### Update rules after technology stack changes
```qwen
/initialize:update-coding-rules After adding GraphQL and Redis to the stack
```

## Arguments

- `args`: Optional scope specification for updates
  - **Platform names**: Update specific platforms (trae, qwen, claude, gemini, cursor)
  - **Special flags**: `--from-specs` to focus on specification-driven updates
  - **Context description**: Description of changes that triggered the update need
  - **Example**: `trae, qwen` or `--from-specs` or leave empty for all platforms

## Security Considerations

> **Important:** Rule updates may introduce new security requirements or modify existing security guidelines. Ensure all team members are informed of security-related changes and that updated rules maintain or improve the security posture.

The update process includes:
- Current state analysis and gap identification
- Specification comparison and requirement changes
- Technology stack evolution assessment
- Consistency validation across platforms
- Backup creation before modifications
- Change documentation and team communication

**Updated Files (as applicable):**
- `./trae/rules/project_rules.md`
- `./QWEN.md`
- `./CLAUDE.md`
- `./GEMINI.md`
- `./CURSOR.md`
- `./CODING_STANDARD.md`

## Related Resources

- [/initialize:coding-rules](coding-rules.md) - Generate initial platform rules
- [/initialize:coding-standard](coding-standard.md) - Update base coding standard
- [/create:tdd](../create/tdd.md) - Technical design document updates
- [/create:prd](../create/prd.md) - Product requirements updates