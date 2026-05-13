#!/bin/bash

# Script to rewrite git history and replace author/committer information
# This will replace alan-kelly-maersk (alan.kelly@maersk.com) with Alan Kelly (alan.kelly.london@gmail.com)

OLD_EMAIL=""
CORRECT_NAME="Alan Kelly"
CORRECT_EMAIL="alan.kelly.london@gmail.com"

echo "⚠️  WARNING: This will rewrite git history!"
echo "Old email to replace: $OLD_EMAIL"
echo "New name: $CORRECT_NAME"
echo "New email: $CORRECT_EMAIL"
echo ""
echo "Press Ctrl+C to cancel, or Enter to continue..."
read

git filter-branch --env-filter '
OLD_EMAIL="alan.kelly@maersk.com"
CORRECT_NAME="Alan Kelly"
CORRECT_EMAIL="alan.kelly.london@gmail.com"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags

echo ""
echo "✅ History rewritten locally!"
echo ""
echo "To push the changes to GitHub, run:"
echo "  git push --force --all"
echo "  git push --force --tags"
echo ""
echo "⚠️  WARNING: Force pushing will overwrite remote history."
echo "   Make sure all collaborators are aware and can re-clone or reset their local repos."
