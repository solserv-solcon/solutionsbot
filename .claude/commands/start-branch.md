---
description: Create a feature branch from develop (never work on main, develop, or production)
argument-hint: <short description>
---

1. Run `git status --short` and `git fetch origin`. If the tree has uncommitted changes, show them and ask before continuing.
2. Propose a branch name from "$ARGUMENTS": `feature/<slug>`, `fix/<slug>`, or `chore/<slug>`, lowercase kebab-case.
3. After I confirm, run `git checkout -b <name> origin/develop`.
4. Report the branch and the plan path it maps to: `plan/<slug>.md`.
