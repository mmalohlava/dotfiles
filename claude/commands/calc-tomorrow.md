---
allowed-tools: Bash(date:*)
description: List my schedule for tomorrow.
---

## Context
 - Tomorrow date is !`date -v +1d "+%Y-%m-%d"`
 - Tomorrow day is !`date -v +1d "+%A"`
 - Tomorrow week number is !`date -v +1d "+%V"` (ISO 8601 week number)

## Your task
List all the meetings I have tomorrow in the calendar and participants in the following format: [[Meeting/Name of meeting]] with [[People/Jason]], [[People/Michal]].
List any important observation, notes depending on the last week records in LogSeq.
