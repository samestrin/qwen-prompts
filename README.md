# Qwen-Prompts
[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-%F0%9F%98%83-yellow.svg)](https://buymeacoffee.com/samestrin)

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

| Category | Command | Description | Type |
|----------|---------|-------------|------|
| 🔍 **Analysis** | `/analyze:dependency` | Analyze project dependencies and relationships | Multi-shot |
| 🔍 **Analysis** | `/analyze:implementation` | Verify implementation against requirements | Multi-shot |
| 🔍 **Analysis** | `/analyze:performance` | Performance bottleneck analysis | Multi-shot |
| 🔍 **Analysis** | `/analyze:security` | Comprehensive security vulnerability assessment | Multi-shot |
| 🔍 **Analysis** | `/analyze:tech-debt` | Technical debt identification and prioritization | Multi-shot |
| 🔍 **Analysis** | `/analyze:vulnerabilities` | Comprehensive vulnerability scanning and assessment | Multi-shot |
| 💻 **Code** | `/code:analysis` | High-level codebase analysis with architecture mapping | Multi-shot |
| 💻 **Code** | `/code:quality` | Comprehensive code quality analysis and recommendations | Multi-shot |
| 💻 **Code** | `/code:review` | Comprehensive code review with severity-based findings | Multi-shot |
| 🔄 **Comparison** | `/compare:dirs` | Compare and analyze directory structures | Multi-shot |
| 🔄 **Comparison** | `/compare:files` | Compare and analyze file differences | Multi-shot |
| 📋 **Creation** | `/create:cost-analysis` | Project cost and resource analysis | Multi-shot |
| 📋 **Creation** | `/create:prd` | Product Requirements Document generation | Multi-shot |
| 📋 **Creation** | `/create:sprint` | Generate detailed sprint plans with shell integration | Multi-shot + Shell |
| 📋 **Creation** | `/create:tdd` | Test-Driven Development documentation | Multi-shot |
| 📋 **Creation** | `/create:tutorial` | Create step-by-step tutorials | Multi-shot |
| 📚 **Documentation** | `/docs:create-standard` | Establish documentation standards | Multi-shot |
| 📚 **Documentation** | `/docs:generate-from-standard` | Generate documentation following standards | Multi-shot |
| 📚 **Documentation** | `/docs:update-standard` | Update existing documentation | Multi-shot |
| 🔍 **Find** | `/find:patterns` | Find and analyze code patterns across projects | Multi-shot |
| 🚀 **Initialize** | `/initialize:coding-rules` | Create platform-specific coding rules | Multi-shot |
| 🚀 **Initialize** | `/initialize:coding-standard` | Generate base coding standard template | Single-shot |
| 🚀 **Initialize** | `/initialize:gitignore` | Generate comprehensive .gitignore files | Single-shot |
| 🚀 **Initialize** | `/initialize:planning` | Set up project planning directory structure | Single-shot |
| 🚀 **Initialize** | `/initialize:update-coding-rules` | Update existing platform-specific rules | Multi-shot |
| 🧪 **Single-Shot** | `/single:analyze:security` | Single-shot security analysis for benchmarking | Single-shot |
| 🧪 **Single-Shot** | `/single:code:analysis` | Single-shot code analysis variant | Single-shot |
| 📊 **Strategy** | `/strategy:extract-business-logic` | Extract and analyze business logic patterns | Multi-shot |
| 📊 **Strategy** | `/strategy:plan` | Create strategic implementation plans | Multi-shot |
| 🧪 **Test** | `/test:coverage` | Test coverage analysis and recommendations | Multi-shot |
| 🧪 **Test** | `/test:review-and-correct` | Generate review and correction documents for test failures | Multi-shot |

**Note**: The `/single:` namespace contains single-shot variants of existing commands designed for testing and benchmarking purposes. These commands provide a direct comparison point against their multi-stage counterparts to evaluate performance and output quality differences.

## Prompt Types

### Single-Shot Prompts
Simple, direct commands that execute once and return results immediately.

**Example**: `/code:analysis`
```toml
prompt = """
The **MAIN_DIRECTORIES** is "`gemini -p "..."`"

### Analysis
`gemini -p "{MAIN_DIRECTORIES} Provide comprehensive analysis..."`
"""
```

### Multi-Shot Prompts
Complex prompts that perform multiple analysis steps, often with conditional logic and comprehensive reporting.

**Example**: `/code:analysis`
```toml
prompt = """
The **MAIN_DIRECTORIES** is "`gemini -p "..."`"

### Analysis
`gemini -p "{MAIN_DIRECTORIES} Provide comprehensive analysis..."`
"""
```

### Shell-Integrated Prompts
Advanced prompts that leverage shell command execution for dynamic behavior and file system operations.

**Example**: `/create:sprint` with sprint numbering
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
/code:analysis

# Analyze specific directory
/code:analysis analyzing the @./server/api/ directory
```

### Sprint Planning
```bash
# Create sprint plan for new feature
/create:sprint Implement user authentication with JWT

# Plan database migration
/create:sprint Migrate user data to new schema
```

### Security Assessment
```bash
# General security audit
/analyze:security

# Focus on specific area
/analyze:security focusing on authentication and authorization
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

**Current Version: 1.3.0**

This release introduces testing command organization and enhanced security analysis:
- **New `/single:` namespace** with single-shot command variants for testing and benchmarking
- **Enhanced security analysis** with severity levels and impact assessments
- **30 comprehensive slash prompts** organized into logical namespaces
- **New `/initialize:` namespace** with 5 commands for complete project setup automation
- **Automatic .gitignore management** across all initialize commands
- **Multi-platform coding rules** generation for Trae, Qwen, Claude, Gemini, and Cursor
- **Workflow documentation** with detailed command sequences and best practices
- **Project structure automation** through planning directory setup
- **Platform-specific customization** for different AI development environments
- Dual directory detection patterns: Original and Comprehensive scanning
- Advanced test file detection and analysis patterns
- Multi-shot prompt architecture with intelligent main directory detection
- Shell execution capabilities for advanced automation
- Comprehensive security documentation and guidelines
- Full integration with Gemini CLI for enhanced AI capabilities
- Variable syntax update: Changed from `@{MAIN_DIRECTORIES}` to `{MAIN_DIRECTORIES}` to support multiple directory detection
- Namespace organization: Commands organized into logical namespaces (`/code:`, `/analyze:`, `/create:`, `/test:`, `/initialize:`, etc.)

For detailed version history and changes, see [CHANGELOG.md](CHANGELOG.md).

## Support

If you find these prompts helpful, consider supporting the project:

[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-%F0%9F%98%83-yellow.svg)](https://buymeacoffee.com/samestrin)

## License

MIT License - see [LICENSE](LICENSE.md) file for details.

## Related Projects

- [qwen-code](https://github.com/QwenLM/qwen-code) - The main CLI tool
- [qweb-prompts](https://github.com/samestrin/qweb-prompts) - Web-focused prompt collection (planned)

---

**Note**: These prompts are designed to work with qwen-code's interactive mode and leverage Gemini's capabilities for optimal performance and context handling.
