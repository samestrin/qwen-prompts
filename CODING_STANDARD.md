# Coding Standard Template

- **Version**: 1.0.0

> **Note**: This is a base template. Use `/initialize:coding-rules` to generate platform-specific versions.

## Project Information

- **Project**: Qwen-Prompts
- **Technology Stack**: TOML, Markdown, Shell Scripts
- **Last Updated**: Tue Aug 26 10:42:34 PDT 2025

## 1. General Principles

### Code Quality Standards
- **Readability First**: Code should be self-documenting
- **Consistency**: Follow established patterns throughout the project
- **Simplicity**: Prefer simple solutions over complex ones
- **Maintainability**: Write code that's easy to modify and extend

### Performance Guidelines
- **Efficiency**: Optimize for performance where it matters
- **Resource Management**: Properly handle memory, files, and connections
- **Scalability**: Consider future growth and load requirements

## 2. Code Structure

### File Organization
- **Directory Structure**: Organize commands by category in the `commands/` directory (e.g., `commands/analyze/`, `commands/create/`)
- **File Naming**: Use lowercase with hyphens for TOML files (e.g., `code-analysis.toml`)
- **Module Organization**: Each TOML file represents a single command with clear separation of concerns

### Function and Class Design
- **Single Responsibility**: Each command should have one clear purpose
- **Function Length**: Keep functions focused and reasonably sized
- **Parameter Limits**: Limit function parameters for clarity
- **Return Values**: Be consistent with return value patterns

## 3. Naming Conventions

### Variables and Functions
- **Descriptive Names**: Use clear, descriptive names
- **Consistency**: Follow language-specific conventions
- **Abbreviations**: Avoid unclear abbreviations

### Constants and Configuration
- **Constants**: Use uppercase with underscores for constants
- **Configuration**: Use descriptive names for configuration variables
- **Environment Variables**: Use uppercase with underscores for environment variables

## 4. Documentation Standards

### Code Comments
- **When to Comment**: Explain why, not what
- **Comment Style**: Use `#` for comments in TOML files
- **Documentation Strings**: Include header comments in all TOML files with command description and usage examples

### README and Documentation
- **Project README**: Must include setup, usage, and contribution guidelines
- **API Documentation**: Document all command arguments and options
- **Change Documentation**: Maintain CHANGELOG.md with all significant changes

## 5. Testing Standards

### Test Organization
- **Test Structure**: Tests should be organized by command category
- **Test Naming**: Use descriptive names that indicate what is being tested
- **Test Categories**: Unit, integration, and end-to-end test guidelines

### Test Quality
- **Coverage Requirements**: Aim for comprehensive test coverage
- **Test Data**: Use realistic test data
- **Mocking Strategy**: Mock external dependencies when appropriate

## 6. Error Handling

### Exception Management
- **Error Types**: Define custom error categories as needed
- **Error Messages**: Provide clear, actionable error messages
- **Logging**: Log errors with sufficient context for debugging

### Validation and Input Handling
- **Input Validation**: Validate all user inputs
- **Sanitization**: Sanitize inputs to prevent injection attacks
- **Security**: Follow security best practices for input handling

## 7. Version Control

### Commit Standards
- **Commit Messages**: Use conventional commit format
- **Branch Naming**: Use descriptive branch names (e.g., `feature/new-command`, `fix/bug-description`)
- **Pull Request Process**: Create PRs for all changes with appropriate descriptions

### Code Review
- **Review Checklist**: Review code for correctness, security, and maintainability
- **Approval Process**: Require approval from maintainers before merging
- **Merge Strategy**: Use squash and merge for clean history

### Git Strategy for Sprints

When working on sprint-based features, follow this standard commit strategy:

1. **Branch Creation**: 
   - Create a feature branch at the start of each sprint
   - Use descriptive branch names: `feature/{sprint-number}-{feature-name}` or `feature/{feature-name}`
   - Example: `feature/sprint-1-user-authentication` or `feature/user-authentication`

2. **Commit Frequency**:
   - Commit after completing each phase of the sprint
   - Use conventional commit messages with clear, descriptive summaries
   - Include detailed commit descriptions when necessary
   - Example format:
     ```
     feat(auth): implement JWT token generation
     
     - Added JWT service for token creation
     - Implemented token expiration handling
     - Added unit tests for token generation
     ```

3. **Branch Management**:
   - Keep feature branches up-to-date with main branch
   - Push changes regularly to remote repository
   - Use pull requests for code review before merging

4. **Completion and Cleanup**:
   - Ensure all tests pass before merging
   - Merge feature branch back to main branch upon completion
   - Delete feature branch after successful merge
   - Example workflow:
     ```bash
     git checkout main
     git pull origin main
     git merge feature/sprint-1-user-authentication
     git push origin main
     git branch -d feature/sprint-1-user-authentication
     git push origin --delete feature/sprint-1-user-authentication
     ```

## 8. Dependencies and Libraries

### Dependency Management
- **Approved Libraries**: Only use well-maintained, secure libraries
- **Version Pinning**: Pin dependencies to specific versions
- **Security Updates**: Regularly update dependencies to address security vulnerabilities

### Custom Code vs Libraries
- **When to Build**: Build custom solutions when libraries don't meet requirements
- **When to Use Libraries**: Use libraries for common functionality
- **Evaluation Criteria**: Evaluate libraries for security, maintenance, and performance

## 9. Performance and Optimization

### Performance Standards
- **Response Times**: Optimize for fast command execution
- **Resource Usage**: Minimize resource consumption
- **Monitoring**: Monitor performance metrics

### Optimization Guidelines
- **Premature Optimization**: Avoid premature optimization
- **Profiling**: Profile code to identify bottlenecks
- **Caching Strategy**: Use caching appropriately

## 10. Security Standards

### Security Practices
- **Authentication**: Follow authentication best practices
- **Authorization**: Implement proper access controls
- **Data Protection**: Protect sensitive data

### Vulnerability Management
- **Security Reviews**: Conduct regular security reviews
- **Dependency Scanning**: Scan dependencies for vulnerabilities
- **Incident Response**: Have a plan for security incidents

## 11. Platform-Specific Sections

### [Language/Framework Specific]
- **Language Features**: Use TOML features appropriately for configuration
- **Framework Patterns**: Follow patterns for qwen-code and gemini-cli integration
- **Tooling**: Use appropriate tools for TOML validation and Markdown formatting

### Development Environment
- **IDE Configuration**: Configure IDE for TOML and Markdown support
- **Linting and Formatting**: Use linters for TOML and Markdown files
- **Build Process**: Validate TOML syntax and test commands

## 12. Enforcement and Compliance

### Automated Checks
- **Linting**: Use linters to enforce code style
- **Testing**: Run tests automatically on all changes
- **CI/CD Integration**: Integrate checks into CI/CD pipeline

### Manual Reviews
- **Code Review Process**: Conduct thorough code reviews
- **Architecture Reviews**: Review architecture changes
- **Documentation Reviews**: Review documentation updates

## 13. Exceptions and Flexibility

### When to Deviate
- **Performance Requirements**: Deviate when performance is critical
- **Legacy Code**: Handle legacy code appropriately
- **Third-party Integration**: Make exceptions for third-party requirements

### Approval Process
- **Exception Requests**: Submit requests for exceptions
- **Documentation**: Document all exceptions
- **Review Process**: Review and approve exceptions

---

## Customization Notes

This template should be customized using:
- `/initialize:coding-rules [platforms]` - Generate platform-specific versions
- `/initialize:update-coding-rules` - Update existing rules based on project evolution

## References

- Project specifications in `planning/specifications/`
- Team agreements and decisions
- Industry best practices and standards