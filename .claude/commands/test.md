---
description: Type-check, run tests, and build
---

If there is no package.json, say the project is not scaffolded yet and stop. Otherwise run `npx vue-tsc --noEmit`, `npx vitest run`, then `npm run build`, stopping at the first failure. Summarize failures as file:line with the likely cause.
