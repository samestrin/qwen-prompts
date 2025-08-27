# /create:cost-analysis - Project Cost Analysis Generator

## Overview

Generates comprehensive cost analysis for projects based on Technical Design Documents (TDD). This command analyzes development effort, hosting requirements, operational costs, and creates detailed cost projections with customizable developer rates and service assumptions.

## Usage Examples

### Default cost analysis
```qwen
/create:cost-analysis
```

### Custom developer rate
```qwen
/create:cost-analysis Assume a developer rate of $120/hour.
```

### Senior developer rate analysis
```qwen
/create:cost-analysis Assume a senior developer rate of $95/hour.
```

### Include specific services
```qwen
/create:cost-analysis Assume $85/hour rate and include premium monitoring services.
```

## Arguments

- `args`: Optional developer rate specification (defaults to $75/hour) and additional cost assumptions

## Prerequisites

- **Required:** `@planning/specifications/tdd.md` file must exist in the project
- The TDD should include Resource Planning and Timeline sections for accurate cost estimation

## Security Considerations

> **Note:** This command analyzes project specifications and generates cost estimates. It does not access external services or execute any code that could impact project security.

The cost analysis includes:
- One-time development costs based on timeline and resource planning
- Monthly operational costs for hosting and services
- Service provider comparison (Digital Ocean, Vercel, Netlify, AWS, GCP)
- Complementary service costs (databases, CDNs, monitoring, email)
- Cost projections with different developer rate scenarios

## Related Resources

- [/create:prd](prd.md) - Product Requirements Document creation
- [/create:tdd](tdd.md) - Technical Design Document creation
- [/strategy:plan](../strategy/plan.md) - Strategic project planning