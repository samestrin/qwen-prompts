# /strategy:plan - Strategic Implementation Planning

## Overview

Investigates and creates a strategic plan to accomplish a task without writing any code. This command takes on the role of a strategist rather than an implementer, conducting thorough analysis of the current codebase state and devising comprehensive plans for implementing new features, refactoring existing code, or solving technical challenges. The output is a detailed strategic roadmap with phases, verification strategies, and risk assessments.

## Usage Examples

### Plan new feature implementation
```qwen
/strategy:plan To implement a two-factor authentication system
```

### Create refactoring strategy
```qwen
/strategy:plan A strategy to refactor the legacy user model to use the new repository pattern
```

### Design migration approach
```qwen
/strategy:plan To migrate from REST API to GraphQL while maintaining backward compatibility
```

### Plan performance optimization
```qwen
/strategy:plan To improve database query performance and reduce response times by 50%
```

## Arguments

- `args`: **Required** - Description of the goal or task to create a strategic plan for. Should be specific and actionable.

## Security Considerations

> **Important:** Strategic planning may identify security implications, data migration risks, or architectural vulnerabilities. Ensure security considerations are properly addressed in implementation phases.

The planning process includes:
- Current state investigation and analysis
- Risk assessment and mitigation strategies
- Phased implementation approach
- Verification and testing strategies
- Rollback and contingency planning
- Resource and timeline estimation

## Related Resources

- [/strategy:extract-business-logic](extract-business-logic.md) - Extract current business logic
- [/create:sprint](../create/sprint.md) - Convert strategy into sprint plans
- [/analyze:implementation](../analyze/implementation.md) - Analyze current implementation patterns