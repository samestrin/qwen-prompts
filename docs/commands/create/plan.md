# /create:plan - Strategic Implementation Planning

Create comprehensive strategic plans for implementing features, refactoring code, or solving complex technical challenges without writing any code. Enhanced with architectural principles from Eskil Steenberg's systems programming methodology for building maintainable, long-lasting software systems.

## Purpose

This command helps you develop detailed strategic plans by combining business analysis with architectural technical evaluation to create actionable implementation roadmaps. The enhanced version incorporates black box design principles, primitive-first thinking, and modular architecture assessment to ensure systems remain maintainable and scalable over decades.

## Key Architectural Enhancements

- **Black Box Design**: Focus on creating modules that can be completely replaced using only their interfaces
- **Primitive-First Analysis**: Identify fundamental data types that flow through your system
- **Future-Proof Architecture**: Design for 10x growth in features, users, and developers
- **Human-Centered Design**: Optimize for developer understanding and cognitive load
- **Dependency Wrapping**: Never depend directly on external code you don't control

## Usage Examples

### Plan new feature implementation
```bash
/create:plan To implement a two-factor authentication system
```

### Create refactoring strategy
```bash
/create:plan A strategy to refactor the legacy user model to use the new repository pattern
```

### Design migration approach
```bash
/create:plan To migrate from REST API to GraphQL while maintaining backward compatibility
```

### Plan performance optimization
```bash
/create:plan To improve database query performance and reduce response times by 50%
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