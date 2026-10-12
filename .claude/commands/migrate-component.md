---
description: Migrate one legacy section into Vue through the plan gate
argument-hint: <section-name>
---

Migrate the `$ARGUMENTS` section of the legacy index.html. Follow `/feature` for the gate (branch `feature/migrate-$ARGUMENTS`, BA plan, lead-dev approval, my sign-off), with these specifics:
1. Look up the section in `docs/legacy-inventory.md`; Grep only that range, never the whole file.
2. The plan lists the destination files from `docs/migration-map.md` and the Toge components to use.
3. Implement via `frontend-implementer`; one section per run.
4. Update `docs/migration-map.md` status and add a `docs/migration-log.md` entry.
5. Run `/review` and `/test`, then lead-dev final check. Do not delete legacy code.
