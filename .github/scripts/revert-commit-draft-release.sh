#!/bin/sh
echo "Running revert last  2 commits script"
echo "Reverting commit id:"
echo $(git rev-parse --verify HEAD)
echo "Git configurations :"
git config --global user.email "team_interfaces+github@twilio.com"
git config --global user.name "twilio-dx"
git revert $(git rev-parse --verify HEAD)
git push origin refs/heads/$1:refs/heads/$1
echo "Reverting commit id:"
git revert $(git rev-parse --verify HEAD)
git push origin refs/heads/$1:refs/heads/$1



