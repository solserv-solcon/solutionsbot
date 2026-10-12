# Decisions

| Date | Decision | Why |
|---|---|---|
| 2026-10-12 | Vite + Vue 3 + TS, Pinia, Vue Router if needed | Static deploy like today; Toge is Vue + shadcn-vue |
| 2026-10-12 | Toge UI as the design system | Sprout's internal system; Chat components fit Athena |
| 2026-10-12 | `script.ts` is the backend source of truth for now | User decision; frontend/backend mismatch (Groq vs Gemini) deferred |
| 2026-10-12 | Keep the "TEST PRODUCTION" banner | Preserve behavior until told otherwise |
| 2026-10-12 | Branches: `production` <- `develop` <- `feature/*`; never edit main, develop, production | Safe releases; hook-enforced |
| 2026-10-12 | Plans in `plan/<slug>.md`, BA writes, lead-dev approves before implementation | Reviewable history of intent |
| 2026-10-12 | lead-dev has read access to code, no code write access | Independent check |
| 2026-10-12 | Vitest + Vue Test Utils only (no Playwright yet) | Smaller scope first |
| 2026-10-12 | Legacy index.html preserved in `legacy/` with inventory and map | Review old code when something breaks |
