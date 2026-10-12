# Endpoints

| Name | Where in legacy | Purpose | Notes |
|---|---|---|---|
| `KB_URL` | line 837 | Apps Script web app returning sheet data | parsed by `parseTab` / `splitCSV` (870-947) |
| `LOGGER_URL` | line 467 | Apps Script: access logs, contact, unanswered, admin list | POST text/plain or JSON, `mode: 'no-cors'` in places |
| `GROQ_WORKER` | line 468 | Cloudflare worker proxying to Groq | called from `sendMessage` (~1282) |
| `SPROUT_GUIDE` | line 495 | `https://guide.sprout.ph` HubSpot KB search | `/_hcms/search?term=&limit=3&type=KNOWLEDGE_ARTICLE` |
| Google Identity Services | line 8 | sign-in | `CLIENT_ID` is public |

Backend: `script.ts` exposes `doGet` (`{ ok, entries, count }`) and `doPost` (`{ ok, answer }`, body `{ question, history }`). Source of truth for now (see `decisions.md`).

In the Vue app these become `VITE_KB_URL`, `VITE_LOGGER_URL`, `VITE_CHAT_URL`, `VITE_GUIDE_URL` in `.env` (see `.env.example` when scaffolded). Full URLs are in `legacy/index.html`; do not copy secrets into docs.

TODO per plan: document exact request/response shapes for `LOGGER_URL` actions by reading lines 584-604, 1063-1156, 1356-1695.
