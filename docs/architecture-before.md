# Architecture: Before (pre-Vue snapshot)

Reference for the state before the Vue/Toge migration. Do not edit except to correct facts. Snapshot commit: `1bd3800` on `main`. Line numbers refer to that version of `index.html` (1717 lines).

## Files
```
solutionsbot/
├── index.html    1717 lines, ~180KB, inline CSS/JS, base64 images
└── script.ts     Google Apps Script backend (ES5 despite .ts), Gemini; source of truth for backend for now
```

## index.html layout
| Lines | Content |
|---|---|
| 8 | Google Identity Services script tag |
| 9-297 | `<style>`: tokens (light 11-27, dark 28-47), header 61, status bar 106, chat 123, chips 169, input 190, footer 221, result cards 227, login overlay 242, fixed panels 269, admin panel 271 |
| 299-315 | `#loginOverlay` (Google sign-in) |
| 316-331 | `#cpOverlay` / `#cpPanel` Contact Us side panel (inline-styled) |
| 332-378 | `.app`: header (user info, theme toggle, Refresh, Admin, Contact Us), red "TEST PRODUCTION" banner, status bar, `#messages`, `#chips`, input row, footer notice |
| 380-1695 | single `<script>` (see `legacy-inventory.md`) |
| 1696-1716 | `#adminOverlay` Admin Panel (tabs: Unanswered, Contact Us, Admins) |

## Runtime flow
1. Page loads, theme restored (`THEME_KEY`), Google Sign-In initialised; session restored from `STORAGE_KEY` in localStorage.
2. After sign-in `loadSheet()` fetches `KB_URL`, `parseTab` turns each tab into entries; admin list loaded from `LOGGER_URL`.
3. User question -> `sendMessage()`: small talk, definition intent, tab choice/switch, policy list, then local `search()`; on no good match, Sprout Guide search, then Groq via `GROQ_WORKER`; unanswered flow offers submission to `LOGGER_URL`.
4. Every question is logged via `logAccess` to `LOGGER_URL`. Admins get an Admin panel (unanswered, contact, admins).

## External dependencies
- `KB_URL` Apps Script (sheet data), `LOGGER_URL` Apps Script (logging, contact, unanswered, admins), `GROQ_WORKER` (Cloudflare worker to Groq), `SPROUT_GUIDE` (HubSpot KB search), Google Identity Services.
- Sheet id and admin emails (`ADMIN_FALLBACK`, lines 470-471) are hardcoded in the client.

## Known issues at snapshot
1. `script.ts:16` hardcodes a Gemini API key (in git history; rotate).
2. Frontend chat uses Groq; `script.ts` is Gemini-based and returns `{ok, entries}`, which differs from what `index.html` parses. Decision: treat `script.ts` as backend source of truth for now.
3. Heavy inline `onclick=` and `innerHTML` building (XSS surface; `esc()` at line 829).
4. Red "TEST PRODUCTION" banner at ~line 353: kept until told otherwise.
