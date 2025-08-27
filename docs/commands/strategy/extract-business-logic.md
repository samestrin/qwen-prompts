# /strategy:extract-business-logic - Business Logic Documentation

## Overview

Scans the codebase and documents all business rules and application logic in plain English. This command provides a comprehensive analysis of core business rules, validation logic, workflow processes, calculation algorithms, authorization rules, and integration patterns embedded in the code. The analysis helps developers understand the business domain and logic flow by extracting human-readable descriptions of complex business requirements implemented in code.

## Usage Examples

### Complete business logic extraction
```qwen
/strategy:extract-business-logic
```

### Focus on specific business domain
```qwen
/strategy:extract-business-logic Focusing on payment processing rules
```

### Extract validation and workflow logic
```qwen
/strategy:extract-business-logic Focusing on user registration and validation workflows
```

### Analyze authorization and access patterns
```qwen
/strategy:extract-business-logic Focusing on role-based access control and permissions
```

## Arguments

- `args`: Optional text to focus the extraction on specific business domains, modules, or types of logic (validation, workflow, calculations, authorization, integration)

## Security Considerations

> **Important:** Business logic extraction may reveal sensitive business rules, algorithms, or proprietary processes. Review the output for any confidential information before sharing or documenting externally.

The extraction process examines:
- Core business rules and constraints
- Data validation and business rule enforcement
- Workflow state transitions and process flows
- Financial calculations and pricing algorithms
- User authorization and access control logic
- Third-party integration business logic
- Edge cases and exception handling patterns

## Related Resources

- [/strategy:plan](plan.md) - Strategic implementation planning
- [/analyze:implementation](../analyze/implementation.md) - Implementation pattern analysis
- [/code:analysis](../code/analysis.md) - General code analysis