#!/bin/sh
echo "Running revert last commit script"
prevCommit=$(git rev-parse --verify HEAD)
echo prevCommit
cd "${GITHUB_WORKSPACE}"
echo "Dummy change to see revert"
git branch ${GITHUB_REF}
echo "Git configurations"
git config --global user.email "team_interfaces+github@twilio.com"
git config --global user.name "twilio-dx"
git reset --hard HEAD~1
git push --force
