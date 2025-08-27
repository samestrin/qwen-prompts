# /initialize:gitignore - Language-Specific .gitignore Generator

## Overview

Generates comprehensive .gitignore files for specified programming languages or frameworks. This command creates or updates .gitignore files with appropriate patterns for various technology stacks, including language-specific build artifacts, IDE files, dependency directories, and common temporary files. The generator supports multiple languages and frameworks and can combine patterns for polyglot projects.

## Usage Examples

### Create .gitignore for Python projects
```qwen
/initialize:gitignore python
```

### Create .gitignore for Node.js projects
```qwen
/initialize:gitignore node
```

### Create .gitignore for multiple languages
```qwen
/initialize:gitignore python, node, react
```

### Create .gitignore for specific frameworks
```qwen
/initialize:gitignore django, nextjs, vue
```

## Arguments

- `args`: **Required** - Comma-separated list of programming languages, frameworks, or tools
  - **Languages**: python, javascript, java, csharp, go, rust, php, ruby, swift, kotlin, cpp
  - **Frameworks**: django, flask, react, vue, angular, nextjs, laravel, rails, spring
  - **Tools**: docker, terraform, vscode, intellij
  - **Example**: `python, docker, vscode` or `nextjs, typescript`

## Security Considerations

> **Important:** The generated .gitignore helps prevent accidentally committing sensitive files like .env files, credentials, and build artifacts. Review the patterns to ensure they align with your project's security requirements.

Common security-related patterns included:
- Environment variable files (.env, .env.local)
- Credential and configuration files
- Build artifacts and compiled binaries
- Log files and debug information
- IDE-specific files that may contain project paths
- Dependency directories with potential vulnerabilities

**Generated/Updated File:** `.gitignore`

## Related Resources

- [/initialize:planning](planning.md) - Set up project planning structure
- [/initialize:coding-standard](coding-standard.md) - Create coding standards
- [/create:sprint](../create/sprint.md) - Create development sprints