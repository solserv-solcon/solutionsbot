# Branching

```
feature/* fix/* chore/*  --PR-->  develop  --promotion PR-->  production
```

- `production`: deployed branch. `develop`: integration/staging. Both exist on origin (created from `main` at 1bd3800). `main` is legacy and not used for new work.
- Branch from `develop`: `feature/<slug>`, `fix/<slug>`, `chore/<slug>`; lowercase kebab-case. The slug names the plan: `plan/<slug>.md`.
- Never edit, commit, or push directly on `main`, `develop`, `production`. Enforced locally by `.claude/hooks/block-main-edits.sh` and `.claude/settings.json`; enforce on GitHub with branch protection.
- Commits and pushes happen only when the user says so. PRs target `develop`; promotion PR `develop` -> `production` (`/promote`). Merges are done by people in GitHub.

## Recommended GitHub settings (user applies)
- Protect `production` and `develop`: require PR, require status checks (`pr-checks`), no direct push, no force push.
- Protect `main` the same way.
- Optionally set `develop` as the default branch.

## PR checklist
- Plan `APPROVED`; acceptance criteria ticked
- `/review` and `/test` clean; CI green
- `docs/migration-map.md` and `docs/migration-log.md` updated for any moved legacy code
- Pre-production checklist comment reviewed
