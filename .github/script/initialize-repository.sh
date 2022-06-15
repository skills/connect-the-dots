#!/usr/bin/env bash
# Make sure this file is executable
# chmod a+x .github/script/initialize-repository.sh

# USAGE: This should only be run once upon initial creation of the
# learner's repository from the template repository. 
# Does a dry run by default, --dry-run=false to run live.

# PURPOSE: This script establishes an initial related history for 
# all branches. It merges main into all other branches in this repository 
# while auto-resolving conflicts in favor of main.

# BACKGROUND: This operation is required because when a repository is 
# created from a template repository with 'Include all branches', each 
# of the branches starts with only one initial commit and no related history.
#
# That state makes it impossible to create pull requests from the 
# step-specific branches into main as the learner progresses
# through the course.

# Setup committer identity
git config user.name github-actions
git config user.email github-actions@github.com

# Fetch main
git checkout main

# Create issue #1 from file
gh issue create --title "Welcome" -F .github/files/issue01.md

# Create issue #2 from file
gh issue create --title "Fix the sidebar" -F .github/files/issue02.md
