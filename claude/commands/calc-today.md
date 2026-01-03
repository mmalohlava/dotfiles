---
allowed-tools: Bash(date:*)
description: List my schedule for today.
---

## Context
 - Today date is !`date "+%Y-%m-%d"`
 - Today day is !`date "+%A"`
 - Week number is !`date "+%V"` (ISO 8601 week number)

## Your task
List all the meetings I have today in the calendar and participants in the following format: [[Meeting/Name of meeting]] with [[People/Jason]], [[People/Michal]].
List any important observation, notes depending on the last week records in LogSeq.
