# Sprint {SPRINT_NUMBER}: {FEATURE_NAME}

**Objective:** {BRIEF_DESCRIPTION_OF_WHAT_THIS_SPRINT_ACCOMPLISHES}

**Important**: You must check off your work as you go to maintain state. Follow the project and commit rules found in `.trae/rules/project_rules.md`, `GEMINI.md` or `CLAUDE.md`. After the end of each phase, re-read the project rules to make sure your context is up to date.

**Instructions**: 
- **TDD Approach**: Use TDD for all {IMPLEMENTATION_TYPE} and new implementations
- **Test Location**: **ALWAYS** place tests in the appropriate directory, NEVER alongside source code files
- **Coding Style**: Follow {LANGUAGE} Standard Style and project naming conventions
- **Function Length**: 50-100 lines max
- **File Length**: 500-650 lines max
- **Cognitive Complexity**: Keep logic simple and clear
- **DRY & KISS**: Avoid over-engineering and unneeded complexity
- **Upon Completion**: Move this completed file to `/planning/sprints/completed`

## Git Branch Strategy

**Branch Management:**
- Create feature branch: `git checkout -b feature/{BRANCH_NAME}`
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

## Phase 1: Foundation and Setup

### 1.0 [ ] **Create Feature Branch**
   **Action:** Create and switch to feature branch for {FEATURE_NAME}
   **Implementation:**
   - Create feature branch: `git checkout -b feature/{BRANCH_NAME}`
   - Ensure working directory is clean before starting
   - Push initial branch to remote: `git push -u origin feature/{BRANCH_NAME}`
   **Goal:** Isolated development environment for {FEATURE_NAME} work

### 1.1 [ ] **{FOUNDATION_TASK_1}**
   **Files:** `{FILE_PATHS}`
   **Action:** {TASK_DESCRIPTION}
   **Implementation:**
   - {SPECIFIC_IMPLEMENTATION_STEP_1}
   - {SPECIFIC_IMPLEMENTATION_STEP_2}
   - {SPECIFIC_IMPLEMENTATION_STEP_3}
   **Tests:** {TEST_REQUIREMENTS}
   **Goal:** {PHASE_GOAL}

### 1.2 [ ] **{FOUNDATION_TASK_2}**
   **Files:** `{FILE_PATHS}`
   **Action:** {TASK_DESCRIPTION}
   **Implementation:**
   - {SPECIFIC_IMPLEMENTATION_STEP_1}
   - {SPECIFIC_IMPLEMENTATION_STEP_2}
   **Tests:** {TEST_REQUIREMENTS}
   **Goal:** {PHASE_GOAL}

### 1.3 [ ] **Commit Phase 1 Progress**
   **Action:** Commit foundation setup
   **Implementation:**
   - Stage all changes: `git add .`
   - Commit with descriptive message: `git commit -m "{COMMIT_TYPE}({SCOPE}): {COMMIT_MESSAGE}"`
   - Push to feature branch: `git push origin feature/{BRANCH_NAME}`
   **Goal:** Track incremental progress and create checkpoint

## Phase 2: Core Implementation

### 2.1 [ ] **{CORE_TASK_1}**
   **Files:** `{FILE_PATHS}`
   **Action:** {TASK_DESCRIPTION}
   **Implementation:**
   - {SPECIFIC_IMPLEMENTATION_STEP_1}
   - {SPECIFIC_IMPLEMENTATION_STEP_2}
   - {SPECIFIC_IMPLEMENTATION_STEP_3}
   **Tests:** {TEST_REQUIREMENTS}
   **Goal:** {PHASE_GOAL}

### 2.2 [ ] **{CORE_TASK_2}**
   **Files:** `{FILE_PATHS}`
   **Action:** {TASK_DESCRIPTION}
   **Implementation:**
   - {SPECIFIC_IMPLEMENTATION_STEP_1}
   - {SPECIFIC_IMPLEMENTATION_STEP_2}
   **Tests:** {TEST_REQUIREMENTS}
   **Goal:** {PHASE_GOAL}

### 2.3 [ ] **Commit Phase 2 Progress**
   **Action:** Commit core implementation
   **Implementation:**
   - Stage all changes: `git add .`
   - Commit with descriptive message: `git commit -m "{COMMIT_TYPE}({SCOPE}): {COMMIT_MESSAGE}"`
   - Push to feature branch: `git push origin feature/{BRANCH_NAME}`
   **Goal:** Track incremental progress and create checkpoint

## Phase 3: Integration and Testing

### 3.1 [ ] **{INTEGRATION_TASK_1}**
   **Files:** `{FILE_PATHS}`
   **Action:** {TASK_DESCRIPTION}
   **Implementation:**
   - {SPECIFIC_IMPLEMENTATION_STEP_1}
   - {SPECIFIC_IMPLEMENTATION_STEP_2}
   **Tests:** {TEST_REQUIREMENTS}
   **Goal:** {PHASE_GOAL}

### 3.2 [ ] **{INTEGRATION_TASK_2}**
   **Files:** `{FILE_PATHS}`
   **Action:** {TASK_DESCRIPTION}
   **Implementation:**
   - {SPECIFIC_IMPLEMENTATION_STEP_1}
   - {SPECIFIC_IMPLEMENTATION_STEP_2}
   **Tests:** {TEST_REQUIREMENTS}
   **Goal:** {PHASE_GOAL}

### 3.3 [ ] **Comprehensive Testing**
   **Action:** Full test suite validation
   **Implementation:**
   - Run all tests: `{TEST_COMMAND}`
   - Ensure all new tests pass
   - Verify no regressions in existing functionality
   - Update test documentation if needed
   **Tests:** All tests must pass
   **Goal:** Ensure feature works correctly with existing system

### 3.4 [ ] **Commit Phase 3 Progress**
   **Action:** Commit integration and testing
   **Implementation:**
   - Stage all changes: `git add .`
   - Commit with descriptive message: `git commit -m "{COMMIT_TYPE}({SCOPE}): {COMMIT_MESSAGE}"`
   - Push to feature branch: `git push origin feature/{BRANCH_NAME}`
   **Goal:** Track incremental progress and create checkpoint

## Phase 4: Documentation and Validation

### 4.1 [ ] **Update Documentation**
   **Action:** Document new {FEATURE_NAME} functionality
   **Implementation:**
   - Update README files where applicable
   - Add API documentation if applicable
   - Update configuration examples
   - Add usage examples and code samples
   **Output:** Complete documentation for new feature

### 4.2 [ ] **Configuration Updates**
   **Action:** Update configuration files and examples
   **Implementation:**
   - Update `{CONFIG_FILE}` with new options
   - Add environment variable documentation
   - Update configuration examples
   - Ensure backward compatibility
   **Goal:** Proper configuration support for new feature

### 4.3 [ ] **Final Integration Testing**
   **Action:** End-to-end validation of {FEATURE_NAME}
   **Implementation:**
   - Test all integration points
   - Verify configuration works correctly
   - Test error handling and edge cases
   - Performance validation if applicable
   **Tests:** Complete integration test suite
   **Goal:** Feature ready for production use

### 4.4 [ ] **Merge Feature Branch and Cleanup**
   **Action:** Merge completed {FEATURE_NAME} back to main branch
   **Implementation:**
   - Ensure all tests pass: `{TEST_COMMAND}`
   - Commit final changes: `git add . && git commit -m "{FINAL_COMMIT_MESSAGE}"`
   - Switch to main branch: `git checkout main`
   - Pull latest changes: `git pull origin main`
   - Merge feature branch: `git merge feature/{BRANCH_NAME}`
   - Push merged changes: `git push origin main`
   - Delete feature branch: `git branch -d feature/{BRANCH_NAME}`
   - Delete remote feature branch: `git push origin --delete feature/{BRANCH_NAME}`
   **Goal:** Clean integration of {FEATURE_NAME} into main codebase

## Success Criteria

This sprint is considered successful when:

1. [ ] **{SUCCESS_CRITERION_1}** - {DESCRIPTION}
2. [ ] **{SUCCESS_CRITERION_2}** - {DESCRIPTION}
3. [ ] **{SUCCESS_CRITERION_3}** - {DESCRIPTION}
4. [ ] **All tests passing** with new {FEATURE_NAME} functionality
5. [ ] **No regressions** in existing functionality
6. [ ] **Documentation updated** to reflect new capabilities
7. [ ] **Configuration properly documented** and examples provided
8. [ ] **Integration points working** with existing services
9. [ ] **Error handling implemented** for edge cases
10. [ ] **Performance requirements met** (if applicable)

## Implementation Guidelines

### {LANGUAGE_SPECIFIC_SECTION}
**{PATTERN_NAME}:**
```{LANGUAGE}
// Before (if refactoring)
{BEFORE_CODE_EXAMPLE}

// After
{AFTER_CODE_EXAMPLE}
```

### Test Strategy
**Test Structure:**
```
{TEST_DIRECTORY_STRUCTURE}
```

**Test Template:**
```{LANGUAGE}
{TEST_CODE_TEMPLATE}
```

### Configuration Pattern
**{CONFIG_TYPE} Structure:**
```{CONFIG_FORMAT}
{CONFIG_EXAMPLE}
```

## Risk Mitigation
- **Breaking Changes:** {MITIGATION_STRATEGY}
- **Performance Impact:** {MITIGATION_STRATEGY}
- **Security Considerations:** {MITIGATION_STRATEGY}
- **Backward Compatibility:** {MITIGATION_STRATEGY}
- **Rollback Plan:** {ROLLBACK_STRATEGY}
- **Testing Coverage:** {TESTING_STRATEGY}

## Dependencies

### Internal Dependencies
- {INTERNAL_DEPENDENCY_1}: {DESCRIPTION}
- {INTERNAL_DEPENDENCY_2}: {DESCRIPTION}

### External Dependencies
- {EXTERNAL_DEPENDENCY_1}: {VERSION_AND_PURPOSE}
- {EXTERNAL_DEPENDENCY_2}: {VERSION_AND_PURPOSE}

### Configuration Dependencies
- {CONFIG_DEPENDENCY_1}: {REQUIREMENT}
- {CONFIG_DEPENDENCY_2}: {REQUIREMENT}