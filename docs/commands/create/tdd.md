# /create:tdd - Technical Design Document Generator

## Overview

Generates comprehensive Technical Design Documents (TDD) from existing Product Requirements Documents (PRD). This command performs detailed technical analysis and creates structured TDD with technology stack decisions, system architecture, implementation specifications, security planning, and project timelines.

## Usage Examples

### Generate TDD from PRD
```qwen
/create:tdd
```

### TDD with specific focus areas
```qwen
/create:tdd Focusing on security architecture and scalability
```

### Performance-optimized TDD
```qwen
/create:tdd Emphasizing performance requirements and optimization strategies
```

## Arguments

- `args`: Optional focus areas or specific technical considerations to emphasize in the TDD

## Prerequisites

- **Required:** `@planning/specifications/prd.md` file must exist in the project
- The PRD should be complete with functional requirements, user stories, and system specifications

## Security Considerations

> **Note:** This command generates technical documentation and security planning based on PRD requirements. It does not execute code or access external systems during the TDD generation process.

The TDD generation includes:
- Technology stack analysis and final recommendations
- System architecture breakdown and component design
- Detailed implementation specifications and API design
- Comprehensive security planning and threat modeling
- Testing strategy development and quality assurance planning
- Risk assessment and mitigation strategies
- Project timeline with development milestones

## Related Resources

- [/create:prd](prd.md) - Product Requirements Document creation
- [/create:cost-analysis](cost-analysis.md) - Cost analysis based on TDD
- [/create:sprint](sprint.md) - Sprint planning from technical requirements