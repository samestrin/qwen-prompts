# Content Creation Commands

Documentation and planning generators for project requirements, technical specifications, strategic planning, and educational content. These commands help create structured, comprehensive documentation following best practices.

## Commands Overview

### [cost-analysis](cost-analysis.md) - Project Cost Analysis Generator
Generates comprehensive cost analysis for projects based on Technical Design Documents, including development effort, hosting costs, and operational expenses.

**Common Use Cases:**
- Project budgeting and planning
- Resource allocation decisions
- Cost-benefit analysis
- Stakeholder reporting

### [prd](prd.md) - Product Requirements Document Generator
Generates comprehensive Product Requirements Documents from feature descriptions, user stories, or initial concepts with detailed analysis and structured specifications.

**Common Use Cases:**
- Feature specification creation
- Stakeholder alignment
- Development planning
- Requirements documentation

### [sprint](sprint.md) - Sprint Plan Generator
Analyzes feature requests and project context to generate detailed and actionable sprint plans with automated project analysis and task breakdown.

**Common Use Cases:**
- Sprint planning automation
- Feature development planning
- Task breakdown and estimation
- Development workflow organization

### [tdd](tdd.md) - Technical Design Document Generator
Generates comprehensive Technical Design Documents from existing Product Requirements Documents with technology stack decisions and implementation specifications.

**Common Use Cases:**
- Technical specification creation
- Architecture documentation
- Implementation planning
- Developer guidance

### [tutorial](tutorial.md) - Codebase Tutorial Generator
Analyzes codebases and creates comprehensive, practical tutorials with real working examples for features, setup guides, and architectural explanations.

**Common Use Cases:**
- Developer onboarding
- Feature documentation
- Educational content creation
- Knowledge transfer

## Document Creation Workflows

### Complete Project Documentation
```
qwen
```

```qwen
# 1. Create Product Requirements Document
> /create:prd for a user authentication system with multi-factor authentication

# 2. Generate Technical Design Document
> /create:tdd

# 3. Create cost analysis
> /create:cost-analysis

# 4. Generate sprint plan
> /create:sprint Implement user authentication with MFA

```

### Educational Content Creation
```
qwen
```

```qwen
# 1. Create comprehensive tutorial
> /create:tutorial Create a tutorial on implementing user authentication
> /file:save @auth-tutorial.md

# 2. Generate setup guide
> /create:tutorial Create a beginner's guide to setting up the development environment
> /file:save @setup-guide.md

# 3. Create architecture explanation
> /create:tutorial Explain the microservices architecture used in this project
> /file:save @architecture-guide.md

# 4. Merge all educational materials
> /file:merge @auth-tutorial.md @setup-guide.md @architecture-guide.md into @educational-content.md
```

### Sprint Planning Workflow
```
qwen
```

```qwen
# 1. Analyze current implementation
> /analyze:implementation Has user authentication been implemented?

# 2. Create strategic plan
> /strategy:plan to implement a comprehensive authentication system

# 3. Generate sprint plan with tasks
> /create:sprint Implement JWT-based authentication with password reset

# 4. Save sprint documentation
> /file:save @authentication-sprint-plan.md
```

## Command Relationships

### Project Documentation Chain
1. **Requirements**: [prd](prd.md) - Product requirements and specifications
2. **Technical Design**: [tdd](tdd.md) - Technical implementation details
3. **Cost Analysis**: [cost-analysis](cost-analysis.md) - Budget and resource planning
4. **Implementation**: [sprint](sprint.md) - Development planning and execution

### Educational Content Creation
- **Tutorials**: [tutorial](tutorial.md) - Step-by-step implementation guides
- **Documentation**: [docs:generate-from-standard](../docs/generate-from-standard.md) - Standards-based documentation
- **Setup**: [initialize:planning](../initialize/planning.md) - Project structure setup

### Integration with Analysis
- **Current State**: [analyze:implementation](../analyze/implementation.md) - What's already implemented
- **Requirements**: [create:prd](prd.md) - What needs to be built
- **Planning**: [create:sprint](sprint.md) - How to implement it

## Tips and Best Practices

### Requirements Documentation
- Start with clear problem statements and user needs
- Include acceptance criteria and success metrics
- Consider security and compliance requirements early
- Validate requirements with stakeholders

### Technical Documentation
- Base technical designs on validated requirements
- Consider scalability and maintainability from the start
- Include security architecture and data flow diagrams
- Plan for monitoring and observability

### Cost Analysis
- Include both one-time and ongoing costs
- Consider different scaling scenarios
- Factor in maintenance and operational overhead
- Provide cost optimization recommendations

### Sprint Planning
- Break down large features into manageable tasks
- Include testing, documentation, and deployment tasks
- Consider dependencies and team capacity
- Plan for risk mitigation and contingencies

### Tutorial Creation
- Focus on practical, hands-on examples
- Include troubleshooting and common pitfalls
- Provide working code examples and references
- Test tutorials with actual implementations

## Related Resources

- **[Strategic Planning](../strategy/)** - High-level planning and business logic analysis
- **[Documentation Commands](../docs/)** - Standards-based documentation creation
- **[Analysis Commands](../analyze/)** - Understanding current state for planning
- **[Initialization Commands](../initialize/)** - Project setup and configuration

---

**Navigation**: [← Comparison Commands](../compare/) • [Documentation Commands →](../docs/)