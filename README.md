# Qwen-Prompts
[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-%F0%9F%98%83-yellow.svg)](https://buymeacoffee.com/samestrin)

A powerful collection of "[hybrid prompt chaining](https://dev.to/samestrin/maximizing-ai-efficiency-building-hybrid-workflows-with-qwen-code-and-gemini-cli-l4c)" slash prompts for [`qwen-code`](https://github.com/QwenLM/qwen-code) CLI tool. These prompts combine multi-shot analysis with single-shot efficiency, leveraging [`gemini-cli`](https://github.com/google-gemini/gemini-cli) integration to deliver **72% faster execution** and **91.7% success rate** across development workflows (tested across 6 repositories).

## Overview

This repository contains 47 carefully crafted TOML prompt files that extend qwen-code's functionality with specialized commands for code analysis, project planning, security auditing, and more. Each prompt uses **hybrid prompt chaining** - a technique that combines the thoroughness of multi-shot prompts with the efficiency of single-shot execution, resulting in **36-83% fewer tokens** while maintaining comprehensive analysis quality.

## Features

- **Hybrid Prompt Chaining**: Multi-shot thoroughness with single-shot efficiency (91.7% success rate, [benchmarked](docs/benchmarks/comprehensive-benchmarks.md))
- **Intelligent Code Analysis**: Deep codebase understanding with architecture mapping
- **Project Planning**: Sprint planning and strategic development roadmaps  
- **Security Auditing**: Professional reports with severity levels and impact assessments
- **Shell Integration**: Advanced prompts with embedded shell command execution
- **Quality Metrics**: Code quality, technical debt, and performance analysis
- **Documentation**: Automated documentation generation and standards
- **Performance Optimized**: 72% faster execution with 36-83% fewer tokens than traditional approaches ([see benchmarks](docs/benchmarks/comprehensive-benchmarks.md))

## ⚠︎ Security Considerations

Slash prompts have **shell execution capabilities** and can run commands on your system. Malicious prompts could potentially harm your system, access sensitive files, or exfiltrate data. _Be responsible, and review prompts prior to installation._

**Before installing:**
- Read our [SECURITY.md](SECURITY.md) file completely
- Manually review each [`.toml`](commands/) file for suspicious commands
- Test in isolated environments first
- Verify all shell commands (backticks) are safe

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

5. Move to your project directory, start qwen-code, and use the slash commands:
   ```bash
   cd your-project-directory
   qwen
   ```

## Command Categories

| Category | Command | Description | Type | Output |
|----------|---------|-------------|------|--------|
| **Analysis** | `/analyze:dependency` | Analyze project dependencies and relationships | Multi-shot | Console |
| **Analysis** | `/analyze:implementation` | Verify implementation against requirements | Multi-shot | Console |
| **Analysis** | `/analyze:performance` | Performance bottleneck analysis | Multi-shot | Console |
| **Analysis** | `/analyze:repo` | Comprehensive repository analysis with statistics | Single-shot + Shell | Console |
| **Analysis** | `/analyze:security` | Comprehensive security vulnerability assessment | Multi-shot | Console |
| **Analysis** | `/analyze:tech-debt` | Technical debt identification and prioritization | Multi-shot | Console |
| **Analysis** | `/analyze:vulnerabilities` | Comprehensive vulnerability scanning and assessment | Multi-shot | Console |
| **Code** | `/code:analysis` | High-level codebase analysis with architecture mapping | Multi-shot | Console |
| **Code** | `/code:quality` | Comprehensive code quality analysis and recommendations | Multi-shot | Console |
| **Code** | `/code:review` | Comprehensive code review with severity-based findings | Multi-shot | Console |
| **Comparison** | `/compare:dirs` | Compare and analyze directory structures | Multi-shot | Console |
| **Comparison** | `/compare:files` | Compare and analyze file differences | Multi-shot | Console |
| **Creation** | `/create:cost-analysis` | Project cost and resource analysis | Multi-shot | Console |
| **Creation** | `/create:prd` | Product Requirements Document generation | Multi-shot | Console |
| **Creation** | `/create:sprint` | Generate detailed sprint plans with shell integration | Multi-shot + Shell | Console |
| **Creation** | `/create:tdd` | Test-Driven Development documentation | Multi-shot | Console |
| **Creation** | `/create:tutorial` | Create step-by-step tutorials | Multi-shot | Console |
| **Documentation** | `/docs:create-standard` | Establish documentation standards | Multi-shot | Console |
| **Documentation** | `/docs:generate-from-standard` | Generate documentation following standards | Multi-shot | Console |
| **Documentation** | `/docs:update-standard` | Update existing documentation | Multi-shot | Console |
| **File** | `/file:delete` | Delete specified files with confirmation | Single-shot | Console |
| **File** | `/file:merge` | Merge multiple files into a single output file | Single-shot | File |
| **File** | `/file:save` | Save the last response to a specified filename | Single-shot | File |
| **Find** | `/find:patterns` | Find and analyze code patterns across projects | Multi-shot | Console |
| **Git** | `/git:add` | Stage files for commit with intelligent selection | Single-shot + Shell | Console |
| **Git** | `/git:add:fast` | Quick file staging with minimal prompts | Single-shot + Shell | Console |
| **Git** | `/git:branch` | Branch management and analysis | Single-shot + Shell | Console |
| **Git** | `/git:commit` | Create commits with comprehensive messaging | Single-shot + Shell | Console |
| **Git** | `/git:commit:fast` | Quick commit creation with minimal prompts | Single-shot + Shell | Console |
| **Git** | `/git:merge` | Merge branches with conflict resolution guidance | Single-shot + Shell | Console |
| **Git** | `/git:pull` | Pull changes with merge conflict handling | Single-shot + Shell | Console |
| **Git** | `/git:push` | Push changes with branch management | Single-shot + Shell | Console |
| **Git** | `/git:status` | Comprehensive repository status analysis | Single-shot + Shell | Console |
| **Git** | `/git:status:fast` | Quick repository status check | Single-shot + Shell | Console |
| **Initialize** | `/initialize:coding-rules` | Create platform-specific coding rules | Multi-shot | File |
| **Initialize** | `/initialize:coding-standard` | Generate base coding standard template | Single-shot | File |
| **Initialize** | `/initialize:gitignore` | Generate comprehensive .gitignore files | Single-shot | File |
| **Initialize** | `/initialize:planning` | Set up project planning directory structure | Single-shot | File |
| **Initialize** | `/initialize:update-coding-rules` | Update existing platform-specific rules | Multi-shot | File |
| **Save** | `/save:file` | Save content to specified file location | Single-shot | File |
| **Save** | `/save:merge` | Merge and save multiple content sources | Single-shot | File |
| **Single-Shot** | `/single:analyze:security` | Single-shot security analysis for benchmarking | Single-shot | Console |
| **Single-Shot** | `/single:code:analysis` | Single-shot code analysis variant | Single-shot | Console |
| **Strategy** | `/strategy:extract-business-logic` | Extract and analyze business logic patterns | Multi-shot | Console |
| **Strategy** | `/strategy:plan` | Create strategic implementation plans | Multi-shot | Console |
| **Test** | `/test:coverage` | Test coverage analysis and recommendations | Multi-shot | Console |
| **Test** | `/test:review-and-correct` | Generate review and correction documents for test failures | Multi-shot | Console |

**Note**: The `/single:` namespace contains single-shot variants of existing commands designed for testing and benchmarking purposes. These commands provide a direct comparison point against their multi-stage counterparts to evaluate performance and output quality differences.

## Documentation

Comprehensive documentation is available for all commands:

- **[Complete Command Documentation](docs/commands/)** - Detailed documentation for all 33 commands organized by category
- **[Quick Reference Guide](docs/quick-reference.md)** - Command cheat sheet and common patterns
- **[Common Workflows](docs/workflows.md)** - Step-by-step workflow examples for real-world scenarios  
- **[Troubleshooting Guide](docs/troubleshooting.md)** - Solutions for common issues and problems
- **[Documentation Directory](docs/README.md)** - Complete documentation overview with benchmarks and evaluations
- **[Security Guidelines](SECURITY.md)** - Important security considerations for shell-integrated workflows

## Prompt Types

### Single-Shot Prompts
Simple, direct commands that execute once and return results immediately.

**Example**: `/code:analysis`
```toml
prompt = """
The **MAIN_DIRECTORIES** is "`gemini -p ...`"

### Analysis
`gemini -p "{MAIN_DIRECTORIES} Provide comprehensive analysis..."`
"""
```

### Hybrid Prompt Chaining
Advanced prompts that combine multi-shot thoroughness with single-shot efficiency. These prompts perform multiple analysis steps in a single execution, delivering comprehensive results with optimal performance.

**Example**: `/code:analysis` with `--comprehensive` flag
```toml
prompt = """
The **MAIN_DIRECTORIES** is "`gemini -p ...`"

### Analysis
`gemini -p "{MAIN_DIRECTORIES} Provide comprehensive analysis..."`
"""
```

**Performance Benefits**: 72% faster execution, 36-83% fewer tokens, 91.7% success rate ([benchmarked](docs/benchmarks/comprehensive-benchmarks.md))

### Shell-Integrated Prompts
Advanced prompts that leverage shell command execution for dynamic behavior and file system operations.

**Example**: `/create:sprint` with sprint numbering
```plaintext
The **CURRENT_HIGHEST_SPRINT** is "`find ./planning/sprints/active ./planning/sprints/completed -name \"*.md\" 2>/dev/null | sed 's|.*/||' | sed 's/_.*$//' | grep -E '^[0-9]+(\\\\.[0-9]+)*$' | sort -V | tail -1`"
```

## Key Features

### Intelligent Directory Detection
Prompts use various sophisticated approaches to detect relevant directories based on their specific purpose:

**Package-Based Detection** (Analysis & Strategy prompts):
- `package.json` (Node.js projects)
- `pyproject.toml` (Python projects)  
- `composer.json` (PHP projects)

**Test Directory Discovery** (Test prompts):
- Searches for `*test*`, `*spec*`, `e2e`, `integration`, `cypress`, `__tests__` directories
- Excludes `node_modules` and `.git` directories

**Direct Shell Commands** (Git & File prompts):
- `git status`, `git branch`, `find` commands for repository operations
- File system operations with `date`, `pwd`, `wc` commands

**No Directory Detection** (Single-shot & Save prompts):
- Direct execution without directory analysis for maximum speed

### Dynamic Shell Execution
Advanced prompts use backtick shell execution for:
- File system analysis
- Dynamic content generation
- Project state detection
- Automated numbering systems

### Comprehensive Analysis
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

# Save your code analysis to a file, after running either previous command
/file:save @code_analysis.md
```

### Sprint Planning
```bash
# Create sprint plan for new feature
/create:sprint Implement user authentication with JWT

# Plan database migration
/create:sprint Migrate user data to new schema
```

### Test Suite Resolution (Sub-Sprint Creation)
```bash
# Create focused review document for troublesome test suite
/test:review-and-correct @test_authentication.py

# This creates a sub-sprint document like:
# planning/sprints/active/1.1_review_and_correct_test_authentication.py.md
```

The `/test:review-and-correct` command creates structured sub-sprint documents for systematic test resolution. When working through a main sprint (e.g., `1_add_jwt_authentication.md`) and encountering difficult test suites, this command generates focused review documents with:

- **Systematic Resolution Strategy**: Step-by-step checkboxes for environment setup, individual test resolution, and validation
- **Detailed Failure Analysis**: Specific error analysis with actual test method names and potential fixes
- **Platform Detection**: Automatic detection of testing framework (pytest, jest, phpunit) and appropriate commands
- **Priority-Based Actions**: Critical, important, and improvement actions organized by urgency
- **Progress Tracking**: Checkboxes for incremental completion and root cause analysis

This approach provides additional structure for coding agents when test suite completion becomes overly complex, ensuring no test failures are overlooked during sprint execution.

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

This collection is featured in the blog article ["72% Faster AI Workflows: How Hybrid Prompt Chaining with Qwen Code and Gemini CLI Boosts Efficiency"](https://dev.to/samestrin/maximizing-ai-efficiency-building-hybrid-workflows-with-qwen-code-and-gemini-cli-l4c) on dev.to. The article demonstrates how **Hybrid Prompt Chaining** revolutionizes AI development workflows by combining the best of both multi-shot and single-shot approaches.

**Proven Performance**: Benchmarks across six diverse repositories consistently show:
- **72% faster execution** compared to traditional multi-shot approaches
- **36-83% fewer tokens** required for comprehensive analysis
- **91.7% success rate** across all test scenarios
- **Superior ROI** through reduced API costs and faster development cycles

## Version

**Current Version: 1.4.1**

For detailed version history, feature updates, and breaking changes, see [CHANGELOG.md](CHANGELOG.md).

## Support

If you find these prompts helpful, consider supporting the project:

[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-%F0%9F%98%83-yellow.svg)](https://buymeacoffee.com/samestrin)

## License

MIT License - see [LICENSE](LICENSE.md) file for details.

## Related Projects

- [qwen-code](https://github.com/QwenLM/qwen-code) - The main CLI tool
- [gemini-cli](https://github.com/google-gemini/gemini-cli) - The underlying CLI tool

---

**Note**: These prompts are designed to work with qwen-code's interactive mode and leverage Gemini's capabilities for optimal performance and context handling.
