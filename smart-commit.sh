#!/bin/bash

# Smart Git Commit Assistant
# Analyzes file changes and creates meaningful, atomic commits for each modified file

echo "🤖 Smart Git Commit Assistant"
echo "============================="
echo ""

# Verify git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Error: Not in a git repository"
    exit 1
fi

# Check if there are any changes to commit
if [ -z "$(git status --porcelain)" ]; then
    echo "✅ No changes to commit - working directory clean"
    exit 0
fi

# Get all modified files (staged and unstaged)
echo "📋 Analyzing repository changes..."
echo ""

# Modified files (unstaged)
MODIFIED_FILES=$(git diff --name-only)

# Staged files
STAGED_FILES=$(git diff --cached --name-only)

# Untracked files
UNTRACKED_FILES=$(git ls-files --others --exclude-standard)

# Deleted files
DELETED_FILES=$(git diff --name-only --diff-filter=D)

# Display summary
echo "📊 Repository Status Summary:"
echo "Modified (unstaged): $(echo "$MODIFIED_FILES" | wc -l | tr -d ' ') files"
echo "Staged: $(echo "$STAGED_FILES" | wc -l | tr -d ' ') files"
echo "Untracked: $(echo "$UNTRACKED_FILES" | wc -l | tr -d ' ') files"
echo "Deleted: $(echo "$DELETED_FILES" | wc -l | tr -d ' ') files"
echo ""

# Function to analyze file changes and generate commit message
analyze_and_commit_file() {
    local file="$1"
    local file_status="$2"
    
    echo "🔍 Analyzing: $file"
    echo "Status: $file_status"
    
    # Generate commit message based on file type and status
    local commit_msg=""
    
    if [ "$file_status" = "untracked" ]; then
        # Generate commit message for new file
        commit_msg="Add $file"
        
        # Enhance commit message based on file type
        case "$file" in
            *.md) commit_msg="docs: Add $file" ;;
            *.toml) commit_msg="feat: Add $file" ;;
            *.py) commit_msg="feat: Add $file module" ;;
            *.js|*.ts) commit_msg="feat: Add $file component" ;;
            *.css|*.scss) commit_msg="style: Add $file stylesheet" ;;
            *.json) commit_msg="config: Add $file configuration" ;;
            *test*|*spec*) commit_msg="test: Add $file test suite" ;;
            ROADMAP.md) commit_msg="docs: Add project roadmap" ;;
            CHANGELOG.md) commit_msg="docs: Update changelog" ;;
            README.md) commit_msg="docs: Update readme" ;;
        esac
        
    elif [ "$file_status" = "deleted" ]; then
        commit_msg="remove: Delete $file"
        
    else
        # For modified files, check if it's a documentation or code file
        commit_msg="Update $file"
        
        # Enhance based on file type and content
        case "$file" in
            *.md) commit_msg="docs: Update $file" ;;
            *.toml) commit_msg="feat: Update $file" ;;
            *test*|*spec*) commit_msg="test: Update $file" ;;
            README*) commit_msg="docs: Update README" ;;
            CHANGELOG.md) commit_msg="docs: Update changelog" ;;
        esac
    fi
    
    echo "💬 Commit message: $commit_msg"
    
    # Stage the file
    if [ "$file_status" = "deleted" ]; then
        git rm "$file" >/dev/null 2>&1
    else
        git add "$file"
    fi
    
    # Create the commit
    if git commit -m "$commit_msg"; then
        echo "✅ Committed: $file"
    else
        echo "❌ Failed to commit: $file"
    fi
    
    echo ""
}

# Process all deleted files first
if [ -n "$DELETED_FILES" ]; then
    echo "🗑️ Processing deleted files..."
    echo "$DELETED_FILES" | while IFS= read -r file; do
        [ -n "$file" ] && analyze_and_commit_file "$file" "deleted"
    done
fi

# Process all modified files
if [ -n "$MODIFIED_FILES" ]; then
    echo "🔄 Processing modified files..."
    echo "$MODIFIED_FILES" | while IFS= read -r file; do
        [ -n "$file" ] && analyze_and_commit_file "$file" "modified"
    done
fi

# Process all untracked files
if [ -n "$UNTRACKED_FILES" ]; then
    echo "📁 Processing untracked files..."
    echo "$UNTRACKED_FILES" | while IFS= read -r file; do
        [ -n "$file" ] && analyze_and_commit_file "$file" "untracked"
    done
fi

echo "🎉 Smart commit process completed!"
echo ""
echo "📊 Final repository status:"
git status --short
echo ""
echo "📜 Recent commits:"
git log --oneline -10
echo ""
echo "✨ All changes have been committed with meaningful messages!"