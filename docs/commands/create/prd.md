# /create:prd - Product Requirements Document Generator

## Overview

Generates comprehensive Product Requirements Documents (PRD) from feature descriptions, user stories, or initial concepts. This command performs detailed analysis of the concept and creates structured PRDs with user stories, functional requirements, technical specifications, and risk assessments.

## Usage Examples

### Simple feature PRD
```qwen
/create:prd For a new user authentication system using passkeys
```

### Complex system PRD
```qwen
/create:prd For a CLI tool that automates blog post generation using LLMs, validates output against a JSON schema, and saves the results to a local file.
```

### Mobile app PRD
```qwen
/create:prd For a mobile expense tracking app with receipt scanning and budget alerts
```

### API service PRD
```qwen
/create:prd For a RESTful API service that processes payment webhooks and sends notifications
```

## Arguments

- `args`: **Required** - Description of the feature, system, or product concept to create a PRD for

## Security Considerations

> **Note:** This command generates comprehensive product documentation and may include security requirements and considerations as part of the PRD structure.

The PRD generation process includes:
- Detailed concept analysis and brainstorming
- User story development and requirement gathering
- Functional and non-functional requirement specification
- Technical stack recommendations and architecture planning
- Risk assessment and mitigation strategies
- Target user identification and persona development

## Related Resources

- [/create:tdd](tdd.md) - Technical Design Document creation
- [/create:cost-analysis](cost-analysis.md) - Cost analysis for projects
- [/strategy:plan](../strategy/plan.md) - Strategic project planning