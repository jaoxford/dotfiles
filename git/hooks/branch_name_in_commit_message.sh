#!/bin/bash

# This script prepends the branch name to commit messages in Git.
# It skips this action for specific branches like master, develop, and release.

# Define branches to skip. If not already defined, use default values.
if [ -z "$BRANCHES_TO_SKIP" ]; then
  BRANCHES_TO_SKIP=(master develop release)
fi

# Get the current branch name
BRANCH_NAME=$(git symbolic-ref --short HEAD)
# Strip any leading directory components (in case the branch is in a folder)
BRANCH_NAME="${BRANCH_NAME##*/}"

# Check if the current branch is in the list of branches to skip
BRANCH_EXCLUDED=$(printf "%s\n" "${BRANCHES_TO_SKIP[@]}" | grep -c "^$BRANCH_NAME$")
# Check if the commit message already contains the branch name
BRANCH_IN_COMMIT=$(grep -c "\[$BRANCH_NAME\]" "$1")

# Check if the commit is a fixup commit
COMMIT_MESSAGE=$(head -n1 "$1")
if [[ "$COMMIT_MESSAGE" =~ ^fixup\! ]]; then
  FIXUP_COMMIT=1
else
  FIXUP_COMMIT=0
fi

# If on a relevant branch, the branch name is not already in the commit message, and it's not a fixup commit,
# prepend the branch name to the commit message.
if [ -n "$BRANCH_NAME" ] && ! [[ $BRANCH_EXCLUDED -eq 1 ]] && ! [[ $BRANCH_IN_COMMIT -ge 1 ]] && [[ $FIXUP_COMMIT -eq 0 ]]; then
  # Prepend the branch name to the commit message
  sed -i.bak -e "1s/^/$BRANCH_NAME: /" "$1"
fi

# Note:
# To use this script, copy it into the 'prepare-commit-msg' hook in the .git/hooks directory of your repository.
# Don't forget to make the script executable with 'chmod +x prepare-commit-msg'.
