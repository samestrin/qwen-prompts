# Troubleshooting Guide

Common issues and solutions when using qwen-prompts commands. This guide covers installation problems, command execution issues, and optimization tips.

## Installation and Setup Issues

### Command Not Found Errors
**Problem**: `/analyze:security` returns "command not found" or similar error.

**Symptoms:**
- Commands not recognized by qwen-code
- "No such file or directory" errors
- Empty command responses

**Solutions:**
```bash
# 1. Verify commands are installed in correct directory
ls ~/.qwen/commands/

# 2. Check for correct TOML files
ls ~/.qwen/commands/analyze/
ls ~/.qwen/commands/code/

# 3. Reinstall commands if missing
cp commands/*.toml ~/.qwen/commands/

# 4. Verify qwen-code can read the directory
qwen --help

# 5. Check file permissions
chmod +r ~/.qwen/commands/*.toml
```

### Permission Denied Errors
**Problem**: Shell commands within prompts fail with permission errors.

**Symptoms:**
- "Permission denied" when running commands
- Shell execution failures
- File access errors

**Solutions:**
```bash
# 1. Check directory permissions
ls -la ~/.qwen/commands/

# 2. Fix permissions if needed
chmod +x ~/.qwen/commands/
chmod +r ~/.qwen/commands/*.toml

# 3. For project directories
chmod +r -R ./src/
chmod +r -R ./

# 4. Check if running in restricted environment
pwd
whoami
```

## Command Execution Issues

### Empty or No Output
**Problem**: Commands execute but return no results or empty output.

**Symptoms:**
- Blank responses
- "No analysis found" messages
- Commands complete without output

**Step-by-Step Solution:**

1. **Exit qwen and check project structure:**
   ```qwen
   > /quit
   ```

2. **Verify you have source code files:**
   ```bash
   # Check current directory
   ls -la
   
   # Look for common source files (Node.js, TypeScript, Python, PHP)
   find . -name "*.js" -o -name "*.ts" -o -name "*.py" -o -name "*.php" | head -10
   
   # Check for package files that indicate project type
   ls package.json pyproject.toml composer.json requirements.txt 2>/dev/null
   ```

3. **If no files found, navigate to correct directory:**
   ```bash
   # Navigate to your project root
   cd /path/to/your/project
   
   # Verify you're in the right place
   ls -la
   ```

4. **Restart qwen in interactive mode and try again:**
   ```bash
   qwen
   ```
   
   ```qwen
   > /analyze:repo
   
   # Or target specific directories if needed
   > /code:analysis @src/
   > /code:analysis @app/
   
   # Use --comprehensive flag for detailed technical analysis
   > /code:analysis --comprehensive @src/
   > /analyze:security --comprehensive
   ```

**Common Causes:**
- **Wrong directory**: Not in project root directory
- **No source files**: Empty project or documentation-only repository
- **Hidden files**: Source code in subdirectories not being detected
- **File permissions**: qwen cannot read project files

#### Overly Narrow Scope
```qwen
# Problem: Too specific arguments
# Instead of:
> /analyze:security Focusing on very specific niche area

# Try broader scope:
> /analyze:security
> /analyze:security Focusing on authentication
```

### Shell Command Failures

**Note on OS Compatibility:** This project was developed and tested on macOS, with expected compatibility for Linux-based operating systems (Ubuntu, Debian, etc.). Windows compatibility is uncertain as many commands rely on Unix/Linux utilities like `find`, `which`, `grep`, and shell features that may not be available or behave differently on Windows systems.

**Problem**: Commands with shell integration fail or produce errors.

**Symptoms:**
- Shell command errors in output
- "Command failed" messages
- Partial results with error messages

**Solutions:**
```bash
# 1. Check shell environment
echo $SHELL
which bash

# 2. Test shell commands manually
find . -name "*.js" | head -5
git status

# 3. Verify required tools are installed
which git
which find
which grep

# 4. Check project structure expectations
ls -la
ls -la .git/
```

## Security and Safety Issues

### Suspicious Shell Commands
**Problem**: Concerned about shell command execution in TOML files.

**Safety Checklist:**
```bash
# 1. Review TOML files before installation
cat ~/.qwen/commands/analyze/repo.toml
cat ~/.qwen/commands/create/sprint.toml

# 2. Verify commands are read-only (expect delete.toml to be identified)
grep -n "rm " ~/.qwen/commands/*.toml
grep -n "delete" ~/.qwen/commands/*.toml

# 3. Test in isolated environment first
mkdir /tmp/test-project
cd /tmp/test-project

# 4. Start qwen in interactive mode
qwen
```

```qwen
> /analyze:repo
```

**Red Flags to Watch For:**
- Commands that modify files without consent: `rm`, `mv`, `>` redirects
- Network operations: `curl`, `wget`, `ssh`
- System modifications: `sudo`, `chmod +x`, package installations

**Note on `/file:delete` ([delete.toml](../commands/file/delete.toml)) Command:**

The `/file:delete` command is designed with multiple safety mechanisms:
- Requires explicit user confirmation before any deletion
- Provides detailed analysis of what will be deleted
- Only operates within the current project directory
- Shows file sizes, types, and content previews before deletion
- Uses a standardized confirmation format to prevent accidental deletions

This command is **highly safe** as it cannot delete files without your explicit "yes" confirmation.

### File System Access
**Problem**: Commands accessing unexpected files or directories.

**Prevention:**
```bash
# 1. Run commands from project root only
cd /path/to/your/project

# 2. Review generated files
ls -la planning/
ls -la *.md

# 3. Start qwen in interactive mode
qwen
```

```qwen
> /analyze:security

> /code:analysis @planning/ @*.md
```

## Performance Issues

### Slow Command Execution
**Problem**: Commands take a very long time to complete.

**Symptoms:**
- Commands hang for minutes
- Partial output then stops
- Memory usage spikes

**Optimization Strategies:**

#### Reduce Scope
```qwen
# Instead of analyzing entire project:
> /code:analysis

# Target specific areas:
> /code:analysis @src/api/
```

#### Use Focused Arguments
```qwen
# Broad analysis (slow):
> /analyze:performance

# Focused analysis (faster):
> /analyze:performance Focusing on database queries
```

#### Check Project Size
```bash
# 1. Check overall project size
du -sh .
find . -type f | wc -l

# 2. Identify large directories to potentially exclude
du -sh */ | sort -hr | head -10

# 3. Start qwen in interactive mode
qwen
```

#### Exclude Large Directories
```qwen
# Exclude large directories if needed (order is important, use avoid before the scan for best performance)
> /code:analysis Avoid ./build/, ./dist/ while analyzing @src/
> /code:analysis Avoid ./large-dataset/, ./temp-files/ while analyzing @src/
```

### Memory Issues
**Problem**: System runs out of memory during command execution.

**Solutions:**
```bash
# 1. Check available memory
free -h

# 2. Close other applications

# 3. Start qwen in interactive mode
qwen
```

```qwen
# 4. Use more focused commands
> /analyze:dependency focusing on npm dependencies
> /file:save @dependency-analysis.md

# 5. Process large projects in chunks
> /code:analysis @src/auth/
> /file:save @code-analysis-auth.md

> /code:analysis @src/api/
> /file:save @code-analysis-api.md

> /code:analysis @src/ui/
> /file:save @code-analysis-ui.md

# 5. Merge chunks together
> /file:merge @dependency-analysis.md @code-analysis-auth.md @code-analysis-api.md @code-analysis-ui.md into @merged-report.md
```

## Output and Results Issues

### Unexpected Results
**Problem**: Command output doesn't match expectations or seems incorrect.

**Debugging Steps:**
```bash
# 1. Verify you're in correct directory
pwd
ls -la
```

```qwen
# 2. Check if project matches expectations
> /analyze:repo  # Get overview first

# 3. Try related commands for comparison
> /code:analysis
> /code:analysis --comprehensive  # For detailed technical output
> /analyze:implementation focusing on feature you expect

# 4. Use explicit targeting
> /analyze:security @src/auth/
> /analyze:security --comprehensive @src/auth/  # For detailed analysis
```

### Formatting Issues
**Problem**: Output has formatting problems or is hard to read.

**Solutions:**
```qwen
# 1. Save output and review in editor
> /code:review
> /file:save @review-[date].md

# 2. Use simpler commands for cleaner output
> /analyze:repo  # Usually well-formatted

# 3. Try different arguments
> /analyze:security with structured output
```

### Missing Expected Information
**Problem**: Output missing key information you expected.

**Troubleshooting:**
```bash
# 1. Check if feature/code exists
find . -name "*auth*"
grep -r "authentication" ./src/

# 2. Start qwen in interactive mode
qwen
```

```qwen
# 3. Try implementation check
> /analyze:implementation Has authentication been implemented?

# 4. Use broader analysis
> /code:analysis  # Comprehensive overview
> /analyze:repo   # Project statistics
```

## Environment-Specific Issues

> **Note:** These commands were primarily developed and tested on macOS. While they should work on most Linux distributions, Windows users may encounter differences in shell command behavior and syntax.

### macOS Issues
**Common Problems:**
- BSD vs GNU command differences
- Permission issues with system directories

**Solutions:**
```bash
# Install GNU tools if needed (optional)
brew install coreutils findutils gnu-sed

# Check command versions
find --version
grep --version
```

### Windows/WSL Issues
**Common Problems:**
- Path separator differences (Windows uses backslashes, Unix uses forward slashes)
- Line ending issues (CRLF vs LF)
- Command syntax differences (especially for find, grep, and other shell utilities)
- WSL path translation issues

**Solutions:**
```bash
# Ensure using Unix-style paths
/code:analysis @src/

# Check line endings if editing TOML files
dos2unix ~/.qwen/commands/*.toml

# For Windows Command Prompt/PowerShell users
# Consider using WSL for better compatibility
# Or install Git Bash which provides Unix-like commands
```

### Docker/Container Issues
**Common Problems:**
- Limited shell access
- Missing development tools

**Solutions:**
```bash
# Verify required tools
which git find grep wc sort

# Install missing tools
apt-get update && apt-get install -y git findutils grep

# Check container permissions
ls -la /
ls -la ~/.qwen/
```

## Getting Help

### Before Reporting Issues
1. **Check this troubleshooting guide**
2. **Verify installation** - ensure all TOML files are in correct locations
3. **Test in clean environment** - try in temporary directory
4. **Review security** - ensure TOML files haven't been modified

### Information to Include
```bash
# System information
uname -a
qwen --version

# Error output (full text)
# File listings
ls -la ~/.qwen/commands/analyze/

# Project structure
ls -la
find . -maxdepth 2 -type d
```

```qwen
# Command that failed
> /analyze:security
```

### Common Solutions Summary
| Issue | Quick Fix |
|-------|-----------|
| Command not found | Check `~/.qwen/commands/` installation |
| Permission denied | `chmod +r ~/.qwen/commands/*.toml` |
| Empty output | Try broader scope or verify project files exist |
| Slow performance | Use focused arguments and target specific directories |
| Shell errors | Verify required tools (`git`, `find`, `grep`) are installed |
| Formatting issues | Save results to file and review in editor |

---

**See Also**: [Quick Reference](quick-reference.md) • [Common Workflows](workflows.md) • [Security Guidelines](../SECURITY.md)