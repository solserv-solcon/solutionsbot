# Solutions Bot (Athena – Solutions Services KB)

## Architecture
- Before: [index.html](index.html) single file (1717 lines, inline CSS/JS) + [script.ts](script.ts) Apps Script backend (ES5 despite `.ts`; source of truth for the backend for now).
- After: Vite + Vue 3 + TS under `src/`, Toge UI. Details: [docs/architecture-before.md](docs/architecture-before.md), [docs/architecture-after.md](docs/architecture-after.md), [docs/migration-map.md](docs/migration-map.md).
- Data source: Google Sheet tab `Solutions Database` (requirement, resolution, notes).
- Legacy code is read-only reference. Never edit `legacy/` or the pre-migration index.html except to move it.

## Branches (enforced by .claude/hooks/block-main-edits.sh)
- `production` (deployed) <- PR from `develop` (integration) <- PRs from `feature/*`, `fix/*`, `chore/*`.
- Never edit, commit, or push on `main`, `develop`, `production`, local or remote. Never merge. Branch from `develop`.
- Commit/push only when the user says so.

## Workflow (every feature)
1. `/feature <description>`: `/start-branch`, then `business-analyst` writes `plan/<slug>.md` (slug = branch slug).
2. `lead-dev` reviews the plan: `APPROVED` or `CHANGES REQUESTED` (max 2 rounds, then ask the user).
3. User signs off. No implementation before this.
4. `frontend-implementer` / `backend-implementer` do only the approved tasks. Scope creep goes back to the BA.
5. `vue-reviewer` / `apps-script-reviewer`, then `frontend-tester` / `backend-tester` (`/review`, `/test`), then `lead-dev` final check.
6. User commits; `/open-pr` (confirm first) opens a PR into `develop` with a pre-production checklist comment.
- Plans live in `plan/`, named after the feature slug. Index: [plan/README.md](plan/README.md).
- Update `docs/migration-map.md` and `docs/migration-log.md` whenever legacy code moves. Use `/compare-legacy` when something breaks.

## Rules
- Never read index.html whole (~180KB, base64). Grep and offset reads; line ranges are in [docs/legacy-inventory.md](docs/legacy-inventory.md).
- No secrets in source. Apps Script reads keys from `PropertiesService.getScriptProperties()`; the frontend calls the proxy, never a provider directly.
- Endpoints (`KB_URL`, `LOGGER_URL`, `GROQ_WORKER`, `SPROUT_GUIDE`) go to `import.meta.env.VITE_*`. See [docs/endpoints.md](docs/endpoints.md).
- Keep the red "TEST PRODUCTION" banner until the user says otherwise.
- Apps Script URLs change on "New deployment"; redeploy via Manage deployments > edit.

## Toge UI
- shadcn-vue registry: `npx shadcn-vue@latest add @toge/ui/toge-<name>` -> `src/components/ui/toge-*` (do not hand-edit).
- Use Toge components and tokens; no custom styles for what Toge covers. Dark mode: `toge-styles` + `toge-theme`, `useTogeTheme()`.
- Docs render client-side: read in browser via `https://toge-ds.azurewebsites.net/storybook/iframe.html?id=<id>&viewMode=docs` (ids like `toge-ui-<name>--docs`). Chat set fits Athena.
- The full installer (`curl ... | node`) runs a remote script: ask the user first.

## Commands (once scaffolded)
`npm run dev`, `npm run build`, `npx vue-tsc --noEmit`, `npx vitest run`
