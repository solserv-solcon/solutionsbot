---
description: Open a PR into develop with a summary and pre-production checklist comment
---

Preconditions; if any fails, stop and say which:
- Current branch is not main, develop, or production
- `git status` is clean (I already committed)
- `plan/<slug>.md` has `Status: APPROVED`
- `/test` passed and lead-dev final check passed

Then:
1. Launch `release-manager` to draft the PR body and the "Pre-production checklist" comment.
2. Show me both drafts and ask for confirmation to push the branch and create the PR into `develop`. Wait for a clear yes.
3. On yes: `git push -u origin <branch>`, `gh pr create --base develop` with the body, then `gh pr comment` with the checklist.
4. Print the PR URL. Never merge, approve, or push to develop or production.
