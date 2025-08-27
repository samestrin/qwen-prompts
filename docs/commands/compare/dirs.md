# /compare:dirs - Directory Structure and Architecture Comparison

## Overview

Performs comprehensive directory-level comparison analyzing structural, architectural, and organizational differences between multiple directories. This command evaluates project organization, technology stacks, design patterns, and provides recommendations for structural improvements and modernization.

## Usage Examples

### Compare project structures
```qwen
/compare:dirs Compare these project structures: @frontend/ @backend/
```

### Compare version directories
```qwen
/compare:dirs Compare @v1/ @v2/, focusing on architectural changes and file organization
```

### Migration analysis
```qwen
/compare:dirs Compare @legacy/ @modernized/, focusing on modernization improvements
```

### Framework comparison
```qwen
/compare:dirs Compare @react-app/ @vue-app/, focusing on framework differences and patterns
```

## Arguments

- `args`: **Required** - Specify the directories to compare, optionally with focus areas like architectural changes, organization patterns, or technology differences

## Security Considerations

> **Note:** This command performs read-only analysis of directory structures and does not modify any files or directories during the comparison process.

The directory comparison analyzes:
- Directory structure and file organization patterns
- Architectural styles and design pattern implementation
- Technology stack differences and framework choices
- Build systems and configuration management approaches
- Testing strategies and quality assurance organization
- Migration paths and evolution analysis between versions

## Related Resources

- [/compare:files](files.md) - File-level detailed comparison
- [/code:analysis](../code/analysis.md) - Comprehensive codebase analysis  
- [/strategy:plan](../strategy/plan.md) - Strategic planning and architecture