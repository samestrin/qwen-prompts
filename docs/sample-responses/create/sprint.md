# Sprint 7.0: Synchronize Logic Between Plex Season Organization Scripts

**Sprint Goal:** Refactor `plex_make_seasons` and `plex_make_all_seasons` to use a consistent implementation method with shared logic while maintaining their distinct functionality. The scripts should share common season detection patterns and file organization logic while preserving their unique capabilities (single vs. batch processing).

**Estimated Timeline:** 5 days (Moderate: Requires extracting shared logic, refactoring two scripts, and comprehensive testing)

**Framework/Technology:** Python 3.7+, Standard Library Only

**Important**: You **must check off your work** as you complete it in real-time to maintain state. Follow the project and commit rules found in `.trae/rules/project_rules.md`, `QWEN.md`, `GEMINI.md` or `CLAUDE.md` (You only need to read one of them.). After the end of each phase, re-read the selected project rule file to make sure your context is up to date.

## Development Guidelines

**Git Strategy:**
- **Branch**: `feature/sync-plex-season-scripts`
- **Commits**: Frequent commits with conventional format
- **Testing**: All tests must pass before merge

**Test Location:** `/tests/test_plex_make_seasons.py` and `/tests/test_plex_make_all_seasons.py`

**Code Standards:**
- **TDD Approach**: Use TDD for all refactored implementations
- **Coding Style**: Follow Python Standard Style and project naming conventions
- **Function Length**: 50-100 lines max
- **File Length**: 500-650 lines max
- **Cognitive Complexity**: Keep logic simple and clear
- **DRY & KISS**: Avoid over-engineering and unneeded complexity

## Success Criteria
1. **Shared Logic**: Common season detection and file organization logic extracted to shared module
2. **Consistent Patterns**: Both scripts use the same comprehensive season detection patterns
3. **Backward Compatibility**: Both scripts maintain their existing command-line interfaces
4. **Enhanced Functionality**: `plex_make_all_seasons` gains the better pattern matching from `plex_make_seasons`
5. **All tests passing** with new synchronized functionality
6. **No regressions** in existing functionality

## Technical Challenges & Risks
1. **Maintaining Backward Compatibility**: Ensuring command-line interfaces remain unchanged
2. **Pattern Matching Differences**: Integrating different pattern matching approaches without breaking existing functionality
3. **Parallel Processing Complexity**: Ensuring shared logic works correctly in both sequential and parallel contexts
4. **Error Handling Consistency**: Making error reporting consistent between scripts while preserving their distinct reporting styles

**Upon Completion**: Move this completed file to `/planning/sprints/completed`

## Git Branch Strategy

**Branch Management:**
- Create feature branch: `git checkout -b feature/sync-plex-season-scripts`
- Commit frequently with descriptive messages following conventional commit format
- Each phase should have its own commit(s)
- Final merge to main after all phases complete and tests pass

**Commit Message Format:**
```
<type>(<scope>): <brief summary>

<detailed description>

- Specific change 1
- Specific change 2
```

## Phase 1: Analysis and Shared Module Creation

**Phase Overview:** Analyze existing codebases, create shared module for common logic, and plan refactoring approach.

**Estimated Duration:** 1 day

### 1.0 [ ] **Create Feature Branch**
   **Action:** Create and switch to feature branch for Plex season script synchronization
   **Implementation:**
   - Create feature branch: `git checkout -b feature/sync-plex-season-scripts`
   - Ensure working directory is clean before starting
   - Push initial branch to remote: `git push -u origin feature/sync-plex-season-scripts`
   **Goal:** Isolated development environment for Plex season script synchronization work

### 1.1 [ ] **Create Shared Logic Module**
   **Challenge Category:** Architecture Refactoring
   **Files to Create:** `plex/plex_season_utils.py`
   **Files to Modify:** None
   **Action:** Extract common logic into shared module that both scripts can use
   **Technical Specifications:**
   - Create `plex_season_utils.py` with shared classes and functions
   - Include common season detection patterns from both scripts
   - Implement shared file organization logic
   - Add shared helper functions (is_non_interactive, file locking, etc.)
   **Implementation Steps:**
   - Identify common functionality between both scripts
   - Create `SeasonPatternDetector` class with comprehensive pattern matching
   - Implement `FileOrganizer` class with collision handling
   - Add shared utility functions for non-interactive detection and locking
   **Dependencies:** Python standard library only
   **Tests Required:** Unit tests for pattern detection and file organization logic
   **Success Criteria:** Shared module created with all common functionality extracted
   **Potential Issues:** 
   - Difficulty identifying truly shared logic vs. script-specific logic
   - Need to maintain backward compatibility with existing interfaces

### 1.2 [ ] **Commit Phase 1 Progress**
   **Action:** Commit foundation setup
   **Implementation:**
   - Stage all changes: `git add .`
   - Commit with descriptive message: `git commit -m "feat(plex): create shared season organization logic module"`
   - Push to feature branch: `git push origin feature/sync-plex-season-scripts`
   **Goal:** Track incremental progress and create checkpoint

## Phase 2: Refactor plex_make_seasons

**Phase Overview:** Refactor `plex_make_seasons` to use the shared logic module while maintaining its existing functionality and interface.

**Estimated Duration:** 1.5 days

### 2.1 [ ] **Refactor plex_make_seasons to Use Shared Logic**
   **Challenge Category:** Code Refactoring
   **Files to Create:** None
   **Files to Modify:** `plex/plex_make_seasons`
   **Action:** Update `plex_make_seasons` to use shared logic while preserving its interface
   **Technical Specifications:**
   - Replace internal season detection with `SeasonPatternDetector`
   - Replace file organization logic with `FileOrganizer`
   - Maintain all existing command-line arguments and behavior
   - Keep detailed per-file reporting and pattern statistics
   **Implementation Steps:**
   - Import shared logic from `plex_season_utils`
   - Replace pattern matching with shared `SeasonPatternDetector`
   - Replace file organization with shared `FileOrganizer`
   - Ensure all existing command-line options continue to work
   - Preserve detailed output formatting and statistics
   **Dependencies:** `plex_season_utils.py`
   **Tests Required:** Integration tests to verify command-line interface and behavior
   **Success Criteria:** `plex_make_seasons` uses shared logic but maintains identical external behavior
   **Potential Issues:**
   - Maintaining exact output format compatibility
   - Preserving specific error handling behavior
   - Ensuring pattern statistics still work correctly

### 2.2 [ ] **Commit Phase 2 Progress**
   **Action:** Commit core implementation
   **Implementation:**
   - Stage all changes: `git add .`
   - Commit with descriptive message: `git commit -m "refactor(plex): refactor plex_make_seasons to use shared logic"`
   - Push to feature branch: `git push origin feature/sync-plex-season-scripts`
   **Goal:** Track incremental progress and create checkpoint

## Phase 3: Refactor plex_make_all_seasons

**Phase Overview:** Refactor `plex_make_all_seasons` to use the shared logic module while enhancing its pattern matching and maintaining its batch processing capabilities.

**Estimated Duration:** 1.5 days

### 3.1 [ ] **Refactor plex_make_all_seasons to Use Shared Logic**
   **Challenge Category:** Code Refactoring with Enhancement
   **Files to Create:** None
   **Files to Modify:** `plex/plex_make_all_seasons`
   **Action:** Update `plex_make_all_seasons` to use shared logic and improved pattern matching
   **Technical Specifications:**
   - Replace internal season detection with `SeasonPatternDetector`
   - Replace file organization logic with `FileOrganizer`
   - Maintain all existing command-line arguments and behavior
   - Keep parallel processing and batch reporting capabilities
   - Add comprehensive pattern matching from `plex_make_seasons`
   **Implementation Steps:**
   - Import shared logic from `plex_season_utils`
   - Replace pattern matching with shared `SeasonPatternDetector`
   - Replace file organization with shared `FileOrganizer`
   - Ensure all existing command-line options continue to work
   - Preserve parallel processing and batch reporting
   - Integrate enhanced pattern matching capabilities
   **Dependencies:** `plex_season_utils.py`
   **Tests Required:** Integration tests for batch processing and parallel execution
   **Success Criteria:** `plex_make_all_seasons` uses shared logic with improved pattern matching while maintaining batch capabilities
   **Potential Issues:**
   - Ensuring shared logic works in parallel processing context
   - Maintaining batch-level reporting vs. per-file reporting
   - Preserving recursive directory processing behavior

### 3.2 [ ] **Commit Phase 3 Progress**
   **Action:** Commit integration and testing
   **Implementation:**
   - Stage all changes: `git add .`
   - Commit with descriptive message: `git commit -m "refactor(plex): refactor plex_make_all_seasons to use shared logic"`
   - Push to feature branch: `git push origin feature/sync-plex-season-scripts`
   **Goal:** Track incremental progress and create checkpoint

## Phase 4: Testing and Documentation

**Phase Overview:** Comprehensive testing of both refactored scripts and documentation updates to reflect changes.

**Estimated Duration:** 1 day

### 4.1 [ ] **Update Tests and Documentation**
   **Challenge Category:** Testing and Documentation
   **Files to Create:** None
   **Files to Modify:** Test files, README.md files, script help text
   **Action:** Update tests to verify synchronized logic and update documentation
   **Technical Specifications:**
   - Update unit tests for both scripts to verify shared logic
   - Add tests for the new shared module
   - Update README.md files with any changes in behavior
   - Ensure help text in both scripts is accurate
   **Implementation Steps:**
   - Run existing tests to identify necessary updates
   - Update test files to verify synchronized functionality
   - Create new tests for shared logic module
   - Update documentation to reflect any changes
   - Verify all command-line interfaces still work as expected
   **Dependencies:** Refactored scripts and shared module
   **Tests Required:** All existing tests plus new tests for shared logic
   **Success Criteria:** All tests pass and documentation is accurate
   **Potential Issues:**
   - Need to update tests to match refactored implementation
   - Ensuring documentation accurately reflects functionality

### 4.2 [ ] **Merge Feature Branch and Cleanup**
   **Action:** Merge completed Plex season script synchronization back to main branch
   **Implementation:**
   - Ensure all tests pass: `python -m pytest tests/ -v`
   - Commit final changes: `git add . && git commit -m "test(plex): finalize testing for synchronized season scripts"`
   - Switch to main branch: `git checkout main`
   - Pull latest changes: `git pull origin main`
   - Merge feature branch: `git merge feature/sync-plex-season-scripts`
   - Push merged changes: `git push origin main`
   - Delete feature branch: `git branch -d feature/sync-plex-season-scripts`
   - Delete remote feature branch: `git push origin --delete feature/sync-plex-season-scripts`
   **Goal:** Clean integration of synchronized Plex season scripts into main codebase

## Success Criteria

This sprint is considered successful when:
1. [ ] **Shared Logic Implementation** - Common functionality extracted to `plex_season_utils.py`
2. [ ] **Consistent Pattern Matching** - Both scripts use the same comprehensive season detection patterns
3. [ ] **Interface Preservation** - Both scripts maintain their existing command-line interfaces
4. [ ] **All tests passing** with new synchronized functionality
5. [ ] **No regressions** in existing functionality
6. [ ] **Documentation updated** to reflect any changes in capabilities

## Implementation Guidelines

### Python Implementation
**Shared Pattern Detection:**
```python
# Before (simplified example from each script)
# plex_make_seasons pattern matching
season_patterns = [
    (r'[Ss](\d{1,2})[Ee]\d{1,3}', 'S{:02d}E format'),
    (r'Season\s*(\d{1,2})', 'Season X format'),
]

# plex_make_all_seasons pattern matching
season_patterns = [
    re.compile(r'[Ss](\d{1,2})[Ee](\d{1,2})', re.IGNORECASE),
    re.compile(r'Season\s*(\d{1,2})\s*Episode\s*(\d{1,2})', re.IGNORECASE),
]

# After (shared implementation)
class SeasonPatternDetector:
    def __init__(self):
        self.patterns = [
            # Standard patterns: S01E01, S1E1, etc.
            (re.compile(r'[Ss](\d{1,2})[Ee]\d{1,3}'), 'S{:02d}E format'),
            (re.compile(r'[Ss]eason[\s\._-]*(\d{1,2})'), 'Season X format'),
            # ... all patterns from both scripts
        ]
    
    def extract_season_info(self, filename: str) -> Tuple[Optional[int], str, str]:
        # Implementation that works for both scripts
```

## Risk Mitigation
- **Backward Compatibility**: Maintain exact command-line interfaces and output formats
- **Pattern Matching Regression**: Extensive testing with various filename patterns
- **Parallel Processing Issues**: Thorough testing of batch script with multiple threads
- **Rollback Plan**: Keep backup copies of original scripts and use feature branch for isolation

## Dependencies

### Internal Dependencies
- `plex_season_utils.py`: Shared logic module for season detection and file organization
- Existing test suite: Tests for both scripts that need to pass after refactoring

### External Dependencies
- Python Standard Library: Only standard library modules used (no external dependencies)