# Changelog

All notable changes to qwen-prompts will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.0] - 2025-08-25

### Added
- **New `/single:` namespace**: Single-shot command variants for testing and benchmarking
- **Testing Command Structure**: Organized single-shot versions of existing commands for performance comparison
  - `/single:analyze:security` - Single-shot security analysis for benchmarking against multi-stage version
  - `/single:code:analysis` - Single-shot code analysis variant
- **Enhanced Security Analysis**: Added severity levels and impact assessments to `/analyze:security` output

### Enhanced
- **Command Organization**: Better structure for testing and production command variants
- **Security Analysis**: Improved output format with risk prioritization and severity classification

## [1.2.0] - 2025-08-24

### Added
- **New `/initialize:` namespace**: Complete project initialization and setup automation
- **5 New Initialize Commands**:
  - `/initialize:planning` - Sets up project planning directory structure with automatic .gitignore management
  - `/initialize:coding-standard` - Generates comprehensive base coding standard template (CODING_STANDARD.md)
  - `/initialize:coding-rules` - Creates platform-specific coding rules for Trae, Qwen, Claude, Gemini, and Cursor
  - `/initialize:gitignore` - Generates comprehensive, language-specific .gitignore files
  - `/initialize:update-coding-rules` - Updates and maintains existing platform-specific coding rules
- **Automatic .gitignore management**: All initialize commands automatically update .gitignore to exclude generated files
- **Multi-platform support**: Coding rules generation supports multiple AI platforms and development environments
- **Project workflow documentation**: Added comprehensive usage workflows documentation (blog/usage-workflows.md)

### Enhanced
- **Workflow automation**: Complete project setup can now be automated through initialize commands
- **Platform-specific customization**: Dynamic generation of coding rules tailored to specific AI platforms
- **File organization**: Systematic approach to project structure and file management

## [1.1.0] - 2025-08-23

### Added
- **3 New Prompts**: `/code:review`, `/compare:dirs`, and `/test:review-and-correct`.
- **Multiple directory detection**: Enhanced ability to detect and analyze multiple source directories in a single project (previously limited to one directory)
- **Comprehensive scanning pattern**: Advanced directory detection through package analysis, pattern matching, and code density evaluation
- **Test file detection pattern**: Specialized pattern for identifying and analyzing test files across different testing frameworks
- **Namespaces**: Organized custom slash commands into logical groups
### Changed
- **Variable syntax update**: Changed from `@{MAIN_DIRECTORIES}` to `{MAIN_DIRECTORIES}` to support multiple directory detection (each directory now comes with its own @ prefix when processed)
- **Enhanced commands with comprehensive patterns**: `/code:analysis`, `/code:quality`, `/code:review`, `/analyze:tech-debt`, `/analyze:security`, `/analyze:performance`, `/test:coverage` now use advanced directory detection and analysis methods
- Updated all TOML files to use the new variable reference pattern for consistent multiple directory support
- Improved directory detection accuracy across all command files

### Fixed
- Corrected variable reference syntax in 5 TOML files
- Validated all TOML files for syntax correctness

## [1.0.0] - 2025-08-22

### Added
- Initial release of qwen-prompts
- 20 comprehensive slash prompts for code analysis and development
- Multi-shot prompt architecture with intelligent main directory detection
- Shell execution capabilities for advanced automation
- Comprehensive security documentation and guidelines
- Full integration with Gemini CLI for enhanced AI capabilities
- TOML-based configuration system
- Support for various programming languages and project structures

### Security
- Implemented comprehensive security guidelines
- Added security audit capabilities
- Established safe shell execution practices