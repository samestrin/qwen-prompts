# Initialization Commands

Project setup and standardization tools for establishing consistent development environments, coding standards, and project configurations. These commands help create solid foundations for new projects and standardize existing ones.

## Commands Overview

### [coding-rules](coding-rules.md) - Platform-Specific Coding Rules
Generates platform-specific coding rules files based on project specifications and base coding standards, supporting multiple AI platforms and development workflows.

**Common Use Cases:**
- Setting up coding standards for new projects
- Creating platform-specific development guidelines
- Establishing consistent coding practices across teams
- Onboarding new developers with clear guidelines

### 📐 [coding-standard](coding-standard.md) - Base Coding Standard Creation
Creates comprehensive base coding standards that serve as the foundation for platform-specific rules and development practices.

**Common Use Cases:**
- Establishing organizational coding standards
- Creating reusable standard templates
- Defining code quality and style guidelines
- Setting up project architecture principles

### 🔄 [update-coding-rules](update-coding-rules.md) - Coding Rules Updates
Updates existing coding rules based on project evolution, lessons learned, and changing requirements.

**Common Use Cases:**
- Evolving coding standards over time
- Incorporating new best practices and patterns
- Adapting rules for technology stack changes
- Maintaining relevance and effectiveness of standards

### 🗂️ [gitignore](gitignore.md) - Git Ignore Configuration
Generates comprehensive .gitignore files tailored to specific technology stacks and development environments.

**Common Use Cases:**
- Setting up version control exclusions
- Preventing sensitive files from being committed
- Optimizing repository size and cleanliness
- Supporting multiple development environments

### [planning](planning.md) - Project Planning Setup
Establishes project planning frameworks, methodologies, and documentation structures for effective project management.

**Common Use Cases:**
- Setting up project management workflows
- Creating planning documentation templates
- Establishing milestone and sprint frameworks
- Defining project governance and processes

## Initialization Workflows

### New Project Setup
```
qwen
```

```qwen
# 1. Initialize project structure
> /initialize:project Create a new project with standard directory structure and configuration files
> /file:save @project-structure-setup.md

# 2. Set up development environment
> /initialize:dev-env Configure development tools, linting, and testing frameworks
> /file:save @dev-environment-setup.md

# 3. Merge setup components into comprehensive initialization guide
> /file:merge @project-structure-setup.md @dev-environment-setup.md into @project-setup-guide.md, then delete the source files that were merged
```

### Team Standardization
```
qwen
```

```qwen
# 1. Create team coding standards
> /initialize:standards Generate coding standards and best practices for the team
> /file:save @coding-standards.md

# 2. Set up shared development tools
> /initialize:tools Configure shared development tools and workflows
> /file:save @shared-tools-setup.md

# 3. Merge standards and tools into comprehensive team guide
> /file:merge @coding-standards.md @shared-tools-setup.md into @team-standards-guide.md, then delete the source files that were merged
```

### Multi-Platform Development Setup
```
qwen
```

```qwen
# 1. Create base coding standard
> /initialize:coding-standard Create a comprehensive coding standard for a Python web application
> /file:save @coding-standard.md

# 2. Generate platform-specific coding rules
> /initialize:coding-rules trae,qwen,claude,gemini
> /file:save @platform-rules.md

# 3. Set up git ignore configuration
> /initialize:gitignore for Python, Node.js, and Docker development
> /file:save @gitignore-setup.md

# 4. Create project planning framework
> /initialize:planning Set up agile development planning with sprint and milestone tracking
> /file:save @planning-framework.md

# 5. Merge all components into comprehensive initialization guide
> /file:merge @coding-standard.md @platform-rules.md @gitignore-setup.md @planning-framework.md into @project-initialization-guide.md, then delete the source files that were merged
```

### Legacy Project Standardization
```
qwen
```

```qwen
# 1. Analyze existing project for standards
> /initialize:coding-standard based on existing codebase patterns and team preferences
> /file:save @team-coding-standard.md

# 2. Update coding rules for current platforms
> /initialize:update-coding-rules Review and update existing coding rules based on project evolution
> /file:save @updated-coding-rules.md

# 3. Standardize git ignore across projects
> /initialize:gitignore Update .gitignore for current technology stack and tools
> /file:save @standardized-gitignore.md

# 4. Merge standardization components into comprehensive plan
> /file:merge @team-coding-standard.md @updated-coding-rules.md @standardized-gitignore.md into @team-standardization-plan.md, then delete the source files that were merged
```

### Multi-Platform Development Setup
```
qwen
```

```qwen
# 1. Create platform-agnostic base standard
> /initialize:coding-standard for cross-platform mobile and web development

# 2. Generate rules for all supported platforms
> /initialize:coding-rules all

# 3. Set up comprehensive git ignore
> /initialize:gitignore for React Native, Node.js, iOS, and Android development

# 4. Save multi-platform guide
> /file:save @multi-platform-setup-guide.md
```

### Legacy Project Standardization
```
qwen
```

```qwen
# 1. Analyze existing project structure
> /initialize:coding-standard Create standard based on existing legacy project @src/

# 2. Update rules for modernization
> /initialize:update-coding-rules Modernize coding rules for current development practices

# 3. Update git ignore for new tools
> /initialize:gitignore Update for modern tooling and CI/CD workflows

# 4. Create migration plan
> /initialize:planning Create migration plan from legacy to standardized development

# 5. Save legacy modernization guide
> /file:save @legacy-standardization-guide.md
```

## Command Relationships

### Integration with Development Workflow
- **Code Quality**: Support [code:quality](../code/quality.md) with established standards and rules
- **Documentation**: Complement [docs:create-standard](../docs/create-standard.md) with coding documentation standards
- **Project Creation**: Enhance [create:prd](../create/prd.md) with standardized development practices

### Analysis and Planning
- **Repository Analysis**: Use [analyze:repo](../analyze/repo.md) to understand existing project structure
- **Strategic Planning**: Support [strategy:plan](../strategy/plan.md) with standardized development frameworks
- **Technical Debt**: Prevent future issues identified by [analyze:tech-debt](../analyze/tech-debt.md)

## Tips and Best Practices

### Coding Standards Creation
- Base standards on industry best practices and team experience
- Make standards specific enough to be useful but flexible enough to evolve
- Include rationale for key decisions to help team understanding
- Create examples and counter-examples for clarity

### Platform-Specific Rules
- Customize rules for each platform's unique requirements and capabilities
- Consider the development workflow and tools used for each platform
- Maintain consistency in core principles while adapting to platform specifics
- Regular review and updates based on platform evolution

### Git Configuration
- Include common IDE and editor files in .gitignore patterns
- Consider team development environments and tools
- Balance between being comprehensive and being overly restrictive
- Document any unusual ignore patterns with rationale

### Project Planning Framework
- Align planning processes with team size and project complexity
- Include templates for common planning artifacts
- Consider integration with existing project management tools
- Build in flexibility for different project types and methodologies

### Standards Maintenance
- Schedule regular reviews of coding standards and rules
- Create feedback mechanisms for team input on standards
- Track adherence to standards and identify common violations
- Update standards based on lessons learned and technology changes

## Related Resources

- **[Code Quality Commands](../code/)** - Code analysis and quality assessment based on standards
- **[Documentation Commands](../docs/)** - Documentation standards and template creation
- **[Analysis Commands](../analyze/)** - Codebase analysis to inform standard creation
- **[Creation Commands](../create/)** - Project creation with established standards

---

**Navigation**: [← Find Commands](../find/) • [Save Commands →](../save/)