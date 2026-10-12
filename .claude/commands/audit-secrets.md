---
description: Scan the repo for hardcoded API keys and tokens
---

Grep script.ts, index.html, legacy/, and src/ for keys and tokens (patterns: `AIza`, `gsk_`, `sk-`, `Bearer `, `api[_-]?key`, `token`). Report file:line and variable name only, never the secret value. Recommend a fix for each: Script Properties for Apps Script, a proxy for the frontend.
