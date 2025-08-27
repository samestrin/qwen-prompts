# Documentation

This directory contains comprehensive documentation for the qwen-prompts project, including performance benchmarks, evaluation studies, sample outputs, and supporting assets.

## Directory Structure

### `/commands/`
Comprehensive documentation for all 45 qwen-code custom slash commands organized by functional category.

#### Analysis Commands
- **[analyze:dependency](commands/analyze/dependency.md)** - Project dependency analysis across multiple package managers
- **[analyze:implementation](commands/analyze/implementation.md)** - Feature implementation analysis and coverage assessment
- **[analyze:performance](commands/analyze/performance.md)** - Performance bottleneck identification and optimization recommendations
- **[analyze:repo](commands/analyze/repo.md)** - Comprehensive repository analysis with statistics and insights
- **[analyze:security](commands/analyze/security.md)** - Comprehensive security analysis and vulnerability assessment (professional reports by default, use `--comprehensive` for detailed technical analysis)
- **[analyze:tech-debt](commands/analyze/tech-debt.md)** - Technical debt analysis and prioritization matrix
- **[analyze:vulnerabilities](commands/analyze/vulnerabilities.md)** - Dependency vulnerability analysis with scanning guidance

#### Code Quality Commands
- **[code:analysis](commands/code/analysis.md)** - Comprehensive codebase architecture and structure analysis (professional reports by default, use `--comprehensive` for detailed technical analysis)
- **[code:quality](commands/code/quality.md)** - Code quality analysis including maintainability and best practices
- **[code:review](commands/code/review.md)** - Comprehensive code review with severity-based findings

#### Comparison Commands
- **[compare:dirs](commands/compare/dirs.md)** - Directory structure and architecture comparison
- **[compare:files](commands/compare/files.md)** - Detailed file-level comparison and analysis

#### Content Creation Commands
- **[create:cost-analysis](commands/create/cost-analysis.md)** - Project cost analysis generator from TDD specifications
- **[create:prd](commands/create/prd.md)** - Product Requirements Document generator
- **[create:sprint](commands/create/sprint.md)** - Sprint plan generator with automated project analysis
- **[create:tdd](commands/create/tdd.md)** - Technical Design Document generator from PRD
- **[create:tutorial](commands/create/tutorial.md)** - Codebase tutorial generator with real examples

#### Documentation Commands
- **[docs:create-standard](commands/docs/create-standard.md)** - Documentation standard and template creator
- **[docs:generate-from-standard](commands/docs/generate-from-standard.md)** - Documentation generator using established standards
- **[docs:update-standard](commands/docs/update-standard.md)** - Documentation standard updater and formatter

#### Search & Discovery Commands
- **[find:patterns](commands/find/patterns.md)** - Code pattern discovery and anti-pattern identification

#### Project Initialization Commands
- **[initialize:coding-rules](commands/initialize/coding-rules.md)** - Platform-specific coding rules generator
- **[initialize:coding-standard](commands/initialize/coding-standard.md)** - Base coding standard template creator
- **[initialize:gitignore](commands/initialize/gitignore.md)** - Language-specific .gitignore generator
- **[initialize:planning](commands/initialize/planning.md)** - Project planning structure setup
- **[initialize:update-coding-rules](commands/initialize/update-coding-rules.md)** - Coding rules update manager

#### File Management Commands
- **[file:save](commands/file/save.md)** - Response content saver for preserving previous command's output
- **[file:merge](commands/file/merge.md)** - File merging utility for consolidating multiple files
- **[file:delete](commands/file/delete.md)** - Safe file and directory deletion with confirmation

#### Git Commands
- **[git:add](commands/git/add.md)** - Stage files for commit with intelligent staging
- **[git:add:fast](commands/git/add/fast.md)** - Quick file staging without analysis
- **[git:branch](commands/git/branch.md)** - Branch management and operations
- **[git:commit](commands/git/commit.md)** - Commit using project standards or conventional format
- **[git:commit:fast](commands/git/commit/fast.md)** - Quick commit without standards checking
- **[git:merge](commands/git/merge.md)** - Branch merging with conflict resolution
- **[git:pull](commands/git/pull.md)** - Pull changes from remote repository
- **[git:push](commands/git/push.md)** - Push changes to remote repository
- **[git:status](commands/git/status.md)** - Repository status with detailed analysis
- **[git:status:fast](commands/git/status/fast.md)** - Quick repository status check

#### Benchmarking Commands
- **[single:analyze:security](commands/single/analyze/security.md)** - Single-shot security analysis for benchmarking
- **[single:code:analysis](commands/single/code/analysis.md)** - Single-shot code analysis for benchmarking

#### Strategic Planning Commands
- **[strategy:extract-business-logic](commands/strategy/extract-business-logic.md)** - Business logic extraction and documentation
- **[strategy:plan](commands/strategy/plan.md)** - Strategic planning and implementation guidance

#### Testing Commands
- **[test:coverage](commands/test/coverage.md)** - Test coverage analysis and improvement recommendations
- **[test:review-and-correct](commands/test/review-and-correct.md)** - Comprehensive test suite review and correction

### `/benchmarks/`
Performance analysis and comparison data between hybrid prompt chaining and single-shot approaches.

- **`comprehensive-benchmarks.md`** - Complete benchmark analysis across 6 repositories showing hybrid prompt chaining performance advantages (11/12 test cases with 19-72% time reduction and 36-83% token efficiency gains)
- **`benchmark-table.html`** - Interactive HTML visualization of performance comparison data

### `/evaluations/`
Qualitative assessments and expert evaluations of AI-generated outputs.

- **`sprint-plan-evaluation.md`** - Professional evaluation comparing hybrid vs single-shot sprint planning outputs, scored by an Agile Program Manager (52/60 vs 42/60, demonstrating superior actionability and delivery confidence)

### `/images/`
Visual assets and diagrams used in documentation and articles.

- **`performance-comparison-chart.png`** - Performance comparison visualization showing hybrid prompt chaining advantages across key metrics (execution time, token usage, success rate)

### `/sample-responses/`
Real-world examples of command outputs demonstrating practical applications.

#### `/sample-responses/create/`
- **`sprint.md`** - Example hybrid prompt chaining sprint plan output showing comprehensive project analysis, detailed task breakdown, and actionable implementation steps

#### `/sample-responses/single/create/`
- Contains single-shot command outputs for comparison with hybrid approaches

## Quick Reference Materials

- **[Quick Reference Guide](quick-reference.md)** - Command cheat sheet and common patterns
- **[Common Workflows](workflows.md)** - Step-by-step workflow examples for real-world scenarios
- **[Troubleshooting Guide](troubleshooting.md)** - Solutions for common issues and problems

## Key Findings Summary

The documentation in this directory supports the core research findings:

- **Performance**: Hybrid prompt chaining achieves 19-72% faster execution through intelligent targeting
- **Efficiency**: 36-83% token reduction compared to brute-force single-prompt approaches  
- **Quality**: 90% vs 75% delivery confidence with more actionable, project-specific outputs
- **Consistency**: 91.7% success rate across 12 comparison points

## Usage

These documents serve multiple purposes:

1. **Research Validation** - Reproducible benchmark data supporting hybrid workflow claims
2. **Quality Assessment** - Expert evaluations demonstrating output superiority
3. **Implementation Examples** - Real command outputs showing practical applications
4. **Visual Communication** - Charts and diagrams for presentations and articles

## Contributing

When adding new documentation:

- Place benchmark data in `/benchmarks/`
- Add evaluation studies to `/evaluations/`
- Store visual assets in `/images/` (prefer SVG format when possible)
- Include sample outputs in appropriate `/sample-responses/` subdirectories

## Related Resources

- [Main Repository](https://github.com/samestrin/qwen-prompts) - Complete qwen-prompts collection
- [Commands](../commands/) - TOML configuration files for all available commands
- [Security Policy](../SECURITY.md) - Important security guidelines for shell-integrated workflows
- [72% Faster AI Workflows: How Hybrid Prompt Chaining with Qwen Code and Gemini CLI Boosts Efficiency](https://medium.com/@sam.estrin/72-faster-ai-workflows-how-hybrid-prompt-chaining-with-qwen-code-and-gemini-cli-boosts-efficiency-1d3dc8a29778) - "**Hybrid Prompt Chaining** combines **Gemini CLI** (fast context discovery and analysis) with **Qwen Code** (specialized synthesis and reporting). Benchmarks across six repositories showed it consistently outperforms single-shot prompts with: **Up to 72% faster execution, 36–83% fewer tokens used, and 91.7% success rate across tests**" on dev.to

For questions about the documentation or to report issues, please refer to the main repository's issue tracker.