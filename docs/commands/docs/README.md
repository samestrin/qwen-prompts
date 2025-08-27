# Documentation Commands

Comprehensive documentation generation and standardization tools for creating, maintaining, and updating project documentation. These commands help establish consistent documentation practices and automate documentation workflows.

## Commands Overview

### [create-standard](create-standard.md) - Documentation Standard Creation
Creates comprehensive documentation standards and templates based on best practices and existing documentation analysis.

**Common Use Cases:**
- Establishing documentation standards for new projects
- Creating consistent templates for API documentation
- Standardizing documentation across multiple projects
- Onboarding documentation guidelines

### 📄 [generate-from-standard](generate-from-standard.md) - Standard-Based Documentation Generation
Generates documentation files following established standards and templates for consistent project documentation.

**Common Use Cases:**
- Creating new documentation following established standards
- Generating API documentation from code analysis
- Producing consistent README files and guides
- Automating documentation creation workflows

### 🔄 [update-standard](update-standard.md) - Documentation Standard Updates
Updates and refines existing documentation standards based on project evolution and best practice improvements.

**Common Use Cases:**
- Evolving documentation standards over time
- Incorporating feedback and lessons learned
- Adapting standards for new project types
- Maintaining documentation quality and relevance

## Documentation Workflows

### New Project Documentation Setup
```
qwen
```

```qwen
# 1. Create documentation standard for the project type
> /docs:create-standard for a Python REST API with authentication and database integration
> /file:save @python-api-documentation-standard.md

# 2. Generate initial documentation following the standard
> /docs:generate-from-standard Create README.md and API documentation following the established standard
> /file:save @generated-project-documentation.md
```

### API Documentation Workflow
```
qwen
```

```qwen
# 1. Analyze existing API documentation for style reference
> /docs:create-standard for REST API documentation, using these files as reference @docs/api-v1.md @docs/auth.md
> /file:save @api-documentation-standard.md

# 2. Generate comprehensive API documentation
> /docs:generate-from-standard Create complete API documentation including endpoints, authentication, and examples
> /file:save @api-documentation.md
```

### Documentation Standardization
```
qwen
```

```qwen
# 1. Create standard based on existing documentation
> /docs:create-standard analyzing @docs/*.md files to create a consistent documentation template
> /file:save @documentation-template-standard.md

# 2. Update existing documentation to match standard
> /docs:generate-from-standard Update all documentation files to follow the established standard
> /file:save @updated-documentation.md

# 3. Merge standard and updates into standardization guide
> /file:merge @documentation-template-standard.md @updated-documentation.md into @documentation-standardization-guide.md, then delete the source files that were merged
```

### Documentation Maintenance
```
qwen
```

```qwen
# 1. Review and update documentation standards
> /docs:update-standard Review current documentation standard and suggest improvements based on project evolution
> /file:save @updated-documentation-standard.md

# 2. Generate updated documentation following revised standards
> /docs:generate-from-standard Regenerate documentation using the updated standard
> /file:save @regenerated-documentation.md

# 3. Merge standard updates and regenerated docs into maintenance plan
> /file:merge @updated-documentation-standard.md @regenerated-documentation.md into @documentation-maintenance-plan.md, then delete the source files that were merged
```

## Command Relationships

### Integration with Analysis Commands
- **Code Analysis**: Use [code:analysis](../code/analysis.md) to understand codebase for documentation
- **Repository Analysis**: Combine with [analyze:repo](../analyze/repo.md) for project overview documentation
- **Security Documentation**: Integrate with [analyze:security](../analyze/security.md) for security documentation

### Strategic Planning Support
- **Project Planning**: Support [strategy:plan](../strategy/plan.md) with documentation planning
- **Standard Implementation**: Use with [initialize:coding-standard](../initialize/coding-standard.md) for complete project setup
- **Quality Assurance**: Complement [code:quality](../code/quality.md) with documentation quality standards

## Tips and Best Practices

### Documentation Standards
- Create standards that reflect your team's communication style and technical needs
- Include examples and templates that teams can easily follow
- Consider your audience (internal developers, external users, stakeholders)
- Balance comprehensiveness with maintainability

### Template Creation
- Design templates that scale with project complexity
- Include placeholder sections for common documentation needs
- Provide clear guidance on when and how to use each section
- Create both minimal and comprehensive template variants

### Documentation Generation
- Use consistent formatting and structure across all generated documentation
- Include relevant code examples and usage patterns
- Ensure generated documentation is immediately useful and accurate
- Plan for regular updates and maintenance of generated content

### Standard Maintenance
- Regularly review and update standards based on team feedback
- Track which documentation practices work well and which need improvement
- Adapt standards as project requirements and team practices evolve
- Document the rationale behind standard decisions for future reference

## Related Resources

- **[Creation Commands](../create/)** - Project creation and setup documentation
- **[Code Commands](../code/)** - Code analysis for technical documentation
- **[Initialization Commands](../initialize/)** - Project setup and standards establishment
- **[Strategy Commands](../strategy/)** - Strategic planning documentation

---

**Navigation**: [← Comparison Commands](../compare/) • [Find Commands →](../find/)