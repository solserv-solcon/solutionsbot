---
description: Review the branch changes with the matching reviewer agents
---

Run `git diff develop...HEAD --stat`. For each changed file:
- script.ts: launch `apps-script-reviewer`
- src/**, *.vue, index.html: launch `vue-reviewer`

Run them in parallel and give me one severity-ordered list of findings.
