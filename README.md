# Qwen-Prompts

A comprehensive collection of slash prompts for [qwen-code](https://github.com/QwenLM/qwen-code) CLI tool. These prompts leverage Gemini's large context window and advanced capabilities to provide powerful development workflow automation.

## Overview

This repository contains carefully crafted TOML prompt files that extend qwen-code's functionality with specialized commands for code analysis, project planning, security auditing, and more. Each prompt is designed to work seamlessly within qwen-code's interactive mode, taking advantage of Gemini's speed, context handling, and free tier benefits.

## Features

- **🔍 Intelligent Code Analysis**: Deep codebase understanding with architecture mapping
- **📋 Project Planning**: Sprint planning and strategic development roadmaps  
- **🔒 Security Auditing**: Comprehensive security vulnerability assessment
- **⚡ Shell Integration**: Advanced prompts with embedded shell command execution
- **📊 Quality Metrics**: Code quality, technical debt, and performance analysis
- **📚 Documentation**: Automated documentation generation and standards

## Security Considerations

Slash prompts have **shell execution capabilities** and can run commands on your system. Malicious prompts could potentially harm your system, access sensitive files, or exfiltrate data. _Be responsible, and review prompts prior to installation._

**Before installing:**
- 📖 Read our [SECURITY.md](SECURITY.md) file completely
- 🔍 Manually review each `.toml` file for suspicious commands
- 🧪 Test in isolated environments first
- ✅ Verify all shell commands (backticks) are safe

**Never install prompts from untrusted sources without thorough review.**

## Installation

1. **Security First**: Read [SECURITY.md](SECURITY.md) and review all prompt files

2. Clone this repository:
   ```bash
   git clone https://github.com/samestrin/qwen-prompts.git
   cd qwen-prompts
   ```

3. **Review each prompt file** in the `commands/` directory before copying

4. Copy the command files to your qwen-code commands directory:
   ```bash
   cp commands/*.toml ~/.qwen/commands/
   ```

5. Start qwen-code and use the slash commands:
   ```bash
   qwen
   ```

## Command Categories

### 🔍 Code Analysis Commands

| Command | Description | Type |
|---------|-------------|------|
| `/analyze-codebase` | Comprehensive codebase architecture analysis | Multi-shot |
| `/dependency-analysis` | Analyze project dependencies and relationships | Multi-shot |
| `/find-patterns` | Discover code patterns and anti-patterns | Multi-shot |
| `/extract-business-logic` | Extract and document business logic | Multi-shot |

### 📋 Planning & Strategy Commands

| Command | Description | Type |
|---------|-------------|------|
| `/plan` | Create strategic implementation plans | Multi-shot |
| `/create-sprint` | Generate detailed sprint plans with shell integration | Multi-shot + Shell |
| `/create-prd` | Product Requirements Document generation | Multi-shot |
| `/create-cost-analysis` | Project cost and resource analysis | Multi-shot |

### 🔒 Quality & Security Commands

| Command | Description | Type |
|---------|-------------|------|
| `/security-audit` | Comprehensive security vulnerability assessment | Multi-shot |
| `/code-quality` | Code quality metrics and recommendations | Multi-shot |
| `/tech-debt` | Technical debt identification and prioritization | Multi-shot |
| `/performance-audit` | Performance bottleneck analysis | Multi-shot |
| `/test-coverage` | Test coverage analysis and recommendations | Multi-shot |

### 📚 Documentation Commands

| Command | Description | Type |
|---------|-------------|------|
| `/create-doc-standard` | Establish documentation standards | Multi-shot |
| `/generate-docs-standard` | Generate documentation following standards | Multi-shot |
| `/update-docs-standard` | Update existing documentation | Multi-shot |
| `/create-tutorial` | Create step-by-step tutorials | Multi-shot |
| `/create-tdd` | Test-Driven Development documentation | Multi-shot |

### 🔧 Development Commands

| Command | Description | Type |
|---------|-------------|------|
| `/check-implementation` | Verify implementation against requirements | Multi-shot |
| `/compare-files` | Compare and analyze file differences | Multi-shot |

## Prompt Types

### Single-Shot Prompts
Simple, direct commands that execute once and return results immediately.

**Example**: `/analyze-codebase`
```toml
prompt = """
The **MAIN_DIRECTORY** is "`gemini -p "..."`"

### Analysis
`gemini -p "@{MAIN_DIRECTORY} Provide comprehensive analysis..."`
"""
```

### Multi-Shot Prompts
Complex prompts that perform multiple analysis steps, often with conditional logic and comprehensive reporting.

**Example**: `/analyze-codebase`
```toml
prompt = """
The **MAIN_DIRECTORY** is "`gemini -p "..."`"

### Analysis
`gemini -p "@{MAIN_DIRECTORY} Provide comprehensive analysis..."`
"""
```

### Shell-Integrated Prompts
Advanced prompts that leverage shell command execution for dynamic behavior and file system operations.

**Example**: `/create-sprint` with sprint numbering
```toml
The **CURRENT_HIGHEST_SPRINT** is "`find ./planning/sprints/active ./planning/sprints/completed -name "*.md" 2>/dev/null | sed 's|.*/||' | sed 's/_.*$//' | grep -E '^[0-9]+(\\.[0-9]+)*$' | sort -V | tail -1`"
```

## Key Features

### 🧠 Intelligent Main Directory Detection
All prompts automatically detect the primary source code directory by analyzing:
- `package.json` (Node.js projects)
- `pyproject.toml` (Python projects)  
- `composer.json` (PHP projects)

### 🔄 Dynamic Shell Execution
Advanced prompts use backtick shell execution for:
- File system analysis
- Dynamic content generation
- Project state detection
- Automated numbering systems

### 📊 Comprehensive Analysis
Multi-layered analysis approach:
1. **Project Structure Analysis**
2. **Architecture Assessment** 
3. **Security Evaluation**
4. **Performance Review**
5. **Documentation Audit**

## Usage Examples

### Basic Code Analysis
```bash
# Analyze entire codebase
/analyze-codebase

# Analyze specific directory
/analyze-codebase analyzing the @./server/api/ directory
```

### Sprint Planning
```bash
# Create sprint plan for new feature
/create-sprint Implement user authentication with JWT

# Plan database migration
/create-sprint Migrate user data to new schema
```

### Security Assessment
```bash
# General security audit
/security-audit

# Focus on specific area
/security-audit focusing on authentication and authorization
```

## Advanced Features

### Conditional Logic
Prompts support conditional execution based on arguments:
```toml
if "{{args}}" != "" then `tree -L 2 $main_directory --gitignore`
```

### Multi-Step Analysis
Complex prompts perform sequential analysis steps:
1. Project discovery
2. Architecture analysis
3. Risk assessment
4. Recommendation generation

### Context-Aware Responses
Prompts adapt their analysis based on:
- Project type and language
- Existing architecture patterns
- Development stage
- Team size and complexity

## Contributing

Contributions are welcome! When adding new prompts:

1. Follow the existing TOML structure
2. Include comprehensive documentation headers
3. Test with various project types
4. Ensure proper shell command escaping
5. Add usage examples

## Blog Series

This collection is part of an upcoming blog series on dev.to exploring advanced qwen-code usage patterns and prompt engineering techniques.

## Version

**Current Version: 1.0**

This is the initial release of qwen-prompts, featuring:
- 20 comprehensive slash prompts
- Multi-shot prompt architecture with intelligent main directory detection
- Shell execution capabilities for advanced automation
- Comprehensive security documentation and guidelines
- Full integration with Gemini CLI for enhanced AI capabilities

## License

MIT License - see LICENSE file for details.

## Related Projects

- [qwen-code](https://github.com/QwenLM/qwen-code) - The main CLI tool
- [qweb-prompts](https://github.com/samestrin/qweb-prompts) - Web-focused prompt collection (planned)

---

**Note**: These prompts are designed to work with qwen-code's interactive mode and leverage Gemini's capabilities for optimal performance and context handling.
