---
description: Transform given specification into implementation plan.
argument-hint: [file with specification]
---

Your task is to help me to transform specification given in $ARGUMENTS into a plan that can be implemented by Claude Code.

Use the AskUserQuestion Tool to help to transform the specification in $ARGUMENTS by interviewing me and gathering plan
details.
Make sure questions are not obvious and probe deeper into the underlying needs and constraints.

Interview me continually and systematically until the plan is complete.
Plan consists of tasks and epics.
Every plan task should be an atomic, commitable piece of work with tests (and if tests don't make sense another form 
of validation that it was completed successfully), every epic should result in a demoable piece of 
software that can be run, tested, and build on top of previous tasks and epics. 
Be exhaustive, be clear, be technical, always focus on small atomic tasks that compose up into a clear 
goal for epic.

Document all responses and insights to create a comprehensive, well-structured, multi-staged plan that is saved into beads system. Use `bd` command to save the plan.
