# Release Checklist (master)

`release-manager` selects the items that apply to a diff and posts them on the PR. B = blocking, R = recommended.

## Backend (Apps Script)
- [ ] B: `script.ts` changed -> redeployed via Deploy > Manage deployments > edit (keeps the URL)
- [ ] B: secrets set in Script Properties (e.g. `GEMINI_API_KEY`); none in source
- [ ] B: if a new URL was issued, `VITE_KB_URL` / `VITE_LOGGER_URL` updated in the hosting environment
- [ ] R: Gemini model name still valid

## Frontend
- [ ] B: new `VITE_*` variables set in the hosting environment; `.env.example` updated
- [ ] B: `npx vue-tsc --noEmit`, `npx vitest run`, `npm run build` pass
- [ ] B: new `toge-*` components committed; no hand edits in `src/components/ui/`
- [ ] R: dark mode and light mode checked

## Security
- [ ] B: `/audit-secrets` clean
- [ ] B: Gemini key at `script.ts:16` rotated (until done, this blocks production)
- [ ] R: no new `v-html` / innerHTML with untrusted content

## Smoke tests (from `behavior-spec.md`, touched sections only)
- [ ] Login, KB load, search, chat reply, contact, unanswered, admin, theme

## Rollback
- [ ] Previous production commit/tag noted; `legacy/index.html` still available
