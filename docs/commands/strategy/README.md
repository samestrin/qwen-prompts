# Strategy Commands

High-level strategic planning and architectural guidance tools for developing comprehensive implementation strategies, refactoring plans, and business logic organization. These commands focus on strategic thinking and planning without immediate implementation.

## Commands Overview

### [plan](plan.md) - Strategic Implementation Planning
Investigates and creates comprehensive strategic plans to accomplish complex tasks, focusing on analysis, planning, and strategic guidance rather than immediate implementation.

**Common Use Cases:**
- Feature implementation strategy development
- System architecture planning and design
- Refactoring and modernization strategies
- Technology migration planning
- Integration strategy development
- Performance optimization planning

### [extract-business-logic](extract-business-logic.md) - Business Logic Extraction Strategy
Develops strategic approaches for extracting and organizing business logic from complex codebases, focusing on separation of concerns and architectural improvements.

**Common Use Cases:**
- Legacy system modernization planning
- Business logic separation and organization
- Domain-driven design implementation strategy
- Microservices extraction planning
- Code architecture refactoring strategy

## Strategic Planning Workflows

### New Feature Implementation Strategy
```
qwen
```

```qwen
# 1. Analyze current system architecture
> /code:analysis focusing on current architecture and integration points
> /file:save @current-architecture-analysis.md

# 2. Develop comprehensive implementation strategy
> /strategy:plan to implement real-time notification system with WebSocket support and push notifications
> /file:save @implementation-strategy.md

# 3. Create detailed implementation roadmap
> /create:prd for real-time notification system based on strategic analysis
> /file:save @implementation-roadmap.md

# 4. Merge strategic components into complete plan
> /file:merge @current-architecture-analysis.md @implementation-strategy.md @implementation-roadmap.md into @notification-system-strategy.md, then delete the source files that were merged
```

### Legacy System Modernization
```
qwen
```

```qwen
# 1. Analyze current system and business logic
> /analyze:repo focusing on legacy components and technical debt
> /file:save @legacy-system-analysis.md

# 2. Develop business logic extraction strategy
> /strategy:extract-business-logic from the legacy monolith to prepare for microservices architecture
> /file:save @business-logic-extraction-strategy.md

# 3. Create modernization implementation plan
> /strategy:plan to migrate from monolith to microservices architecture
> /file:save @modernization-implementation-plan.md

# 4. Merge modernization components into comprehensive strategy
> /file:merge @legacy-system-analysis.md @business-logic-extraction-strategy.md @modernization-implementation-plan.md into @legacy-modernization-strategy.md, then delete the source files that were merged
```

### Performance Optimization Strategy
```
qwen
```

```qwen
# 1. Identify performance bottlenecks
> /analyze:performance focusing on database queries and application bottlenecks
> /file:save @performance-bottlenecks-analysis.md

# 2. Develop optimization strategy
> /strategy:plan to optimize database performance and implement caching strategy
> /file:save @optimization-strategy.md

# 3. Create detailed performance improvement roadmap
> /create:sprint for performance optimization implementation
> /file:save @performance-improvement-roadmap.md

# 4. Merge optimization components into comprehensive strategy
> /file:merge @performance-bottlenecks-analysis.md @optimization-strategy.md @performance-improvement-roadmap.md into @performance-optimization-strategy.md, then delete the source files that were merged
```

### Architecture Refactoring Strategy
```
qwen
```

```qwen
# 1. Analyze current architecture patterns
> /find:patterns Find architectural patterns and anti-patterns in the current codebase
> /file:save @architecture-patterns-analysis.md

# 2. Develop business logic organization strategy
> /strategy:extract-business-logic to improve separation of concerns and modularity
> /file:save @business-logic-organization-strategy.md

# 3. Create comprehensive refactoring plan
> /strategy:plan to refactor architecture for improved maintainability and scalability
> /file:save @refactoring-plan.md

# 4. Merge refactoring components into comprehensive architecture strategy
> /file:merge @architecture-patterns-analysis.md @business-logic-organization-strategy.md @refactoring-plan.md into @architecture-refactoring-strategy.md, then delete the source files that were merged
```

### Integration Strategy Planning
```
qwen
```

```qwen
# 1. Analyze existing integrations and dependencies
> /analyze:dependency focusing on external services and integration points
> /file:save @existing-integrations-analysis.md

# 2. Develop integration strategy
> /strategy:plan to integrate with third-party payment processing and customer management systems
> /file:save @integration-strategy.md

# 3. Create security and compliance considerations
> /analyze:security focusing on integration security requirements
> /file:save @integration-security-analysis.md

# 4. Merge integration components into comprehensive strategy
> /file:merge @existing-integrations-analysis.md @integration-strategy.md @integration-security-analysis.md into @third-party-integration-strategy.md, then delete the source files that were merged
```

## Command Relationships

### Analysis Foundation
- **Architecture Analysis**: Build upon [code:analysis](../code/analysis.md) for architectural understanding
- **System Assessment**: Use [analyze:repo](../analyze/repo.md) for comprehensive system evaluation
- **Performance Insights**: Leverage [analyze:performance](../analyze/performance.md) for optimization strategies
- **Security Considerations**: Integrate [analyze:security](../analyze/security.md) for secure strategy development

### Implementation Planning
- **Project Requirements**: Support [create:prd](../create/prd.md) with strategic foundation
- **Sprint Planning**: Inform [create:sprint](../create/sprint.md) with strategic priorities
- **Testing Strategy**: Guide [test:coverage](../test/coverage.md) with strategic testing approaches

### Pattern and Comparison Analysis
- **Pattern Identification**: Use [find:patterns](../find/patterns.md) for strategic pattern analysis
- **Implementation Comparison**: Leverage [compare:files](../compare/files.md) for strategic option evaluation

## Tips and Best Practices

### Strategic Planning Approach
- Focus on high-level strategy and planning rather than immediate implementation details
- Consider long-term implications and scalability requirements
- Analyze current system thoroughly before proposing strategic changes
- Include risk assessment and mitigation strategies in planning

### Business Logic Strategy
- Identify clear boundaries between business logic and infrastructure concerns
- Plan for gradual extraction and migration to minimize disruption
- Consider domain-driven design principles for business logic organization
- Plan testing strategies for extracted business logic components

### Implementation Strategy
- Break complex strategies into manageable phases and milestones
- Consider resource requirements and team capabilities
- Plan for rollback and risk mitigation strategies
- Include monitoring and success metrics in strategic planning

### Architecture Strategy
- Consider current system constraints and technical debt
- Plan for both immediate improvements and long-term architectural goals
- Include performance, security, and maintainability considerations
- Document architectural decisions and trade-offs clearly

### Strategic Communication
- Create clear, actionable strategic recommendations
- Include rationale and benefits for proposed strategic approaches
- Consider stakeholder perspectives and constraints
- Provide multiple strategic options when appropriate

## Related Resources

- **[Analysis Commands](../analyze/)** - Foundation analysis for strategic planning
- **[Code Quality Commands](../code/)** - Architectural analysis for strategy development  
- **[Creation Commands](../create/)** - Implementation planning based on strategic guidance
- **[Find Commands](../find/)** - Pattern analysis for strategic decision-making

---

**Navigation**: [← Single Commands](../single/) • [Test Commands →](../test/)