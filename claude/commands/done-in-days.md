---
allowed-tools: Bash(date:*)
argument-hint: [number of days to check]
description: Summarize all my notes and done items in the past days (default is 10days).
---

## Context
 - Today date is !`date "+%Y-%m-%d"`
 - Today day is !`date "+%A"`
 - Week number is !`date "+%V"` (ISO 8601 week number)

## Your task
Check my notes in Logseq in the past $ARGUMENTS days (default is 10days) and generate summary of my notes and meetings.
Also generate list of done items and pending items that were recorded in the past $ARGUMENTS days (default is 10days).
