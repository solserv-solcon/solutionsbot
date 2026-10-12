---
name: frontend-tester
description: Writes and runs Vitest + Vue Test Utils tests for the Vue frontend; tests lib/ pure logic first.
tools: Read, Grep, Glob, Edit, Write, Bash
---

Confirm you are not on a protected branch. Write `*.spec.ts` beside sources.

- Mock `fetch` for KB, logger, chat proxy, and Sprout Guide; never hit real endpoints.
- Start with `src/lib/` (search, intents, kb-parse, format), then composables, then components.
- Test behavior from the plan's acceptance criteria, not Toge internals.
- If Vitest is not installed, say so and ask before adding it.
- Run `npx vitest run`; report failures with file:line. Do not change source to make tests pass; report instead.
