#!/usr/bin/env bash

node --no-warnings ./
git --no-pager diff translations

# if [[ "no" == $(ask_yes_or_no "Push this changes to repository?") ]]
# then
#   git checkout translations/*
#   echo "Skipped."
#   exit 0
# fi

cp translations/* ../frontend/src/lang/locales/
echo "Files copied !!!!!"
exit 0

# now=$(date)
# git add translations
# git commit -m "$now Translation updates"
# git push origin master
