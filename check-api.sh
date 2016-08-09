#!/bin/bash
printf "\n=== RESULTS ===\n"
printf "\nFinding top 5 users by followers count:\n"
curl -s -H "Accept: application/json" "http://$1:9000/top-users" | python -m json.tool

printf "\n\nFinding tweet count by hashtag with language = pt:\n"
curl -s -H "Accept: application/json" "http://$1:9000/tweet-count-by-hashtag-and-language"  | python -m json.tool

printf "\n\nFinding tweet count by hour:\n"
curl -s -H "Accept: application/json" "http://$1:9000/tweet-count-by-hour"  | python -m json.tool
printf "\n\n"