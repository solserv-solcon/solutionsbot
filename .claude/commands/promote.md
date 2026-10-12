---
description: Draft the develop to production promotion PR with the aggregated checklist
---

1. Run `gh pr list --base develop --state merged` and `git log production..develop --oneline` to collect what is going to production.
2. Launch `release-manager` to aggregate the pre-production checklists of those PRs into one deduplicated list (blocking first).
3. Show me the draft PR body and checklist and ask for confirmation before `gh pr create --base production --head develop`. Wait for a clear yes. Never merge.
