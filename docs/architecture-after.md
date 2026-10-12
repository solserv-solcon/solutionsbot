# Architecture: After (target)

```
solutionsbot/
├── CLAUDE.md, README.md
├── legacy/index.html          untouched copy of the pre-migration file (git mv)
├── script.ts                  Apps Script backend (stays; backend plans later)
├── docs/                      architecture, inventory, map, log, behavior spec, endpoints, toge usage, decisions, branching, release checklist
├── plan/                      one plan per feature, named after the branch slug
├── .claude/                   agents, commands, hooks, settings
├── .github/                   CI workflow, PR template
├── index.html                 Vite entry
├── package.json, vite.config.ts, tsconfig*.json, components.json, .env.example
└── src/
    ├── main.ts, App.vue
    ├── components/
    │   ├── ui/toge-*                    installed from the Toge registry (do not hand-edit)
    │   ├── auth/LoginOverlay.vue        <- #loginOverlay, Google Sign-In
    │   ├── layout/AppHeader.vue         <- header, theme toggle, user info
    │   ├── layout/StatusBar.vue         <- .sbar, setSt
    │   ├── chat/ChatWindow.vue          <- #messages, addMsg, typing
    │   ├── chat/ChatInput.vue           <- input row, chips
    │   ├── chat/MessageBubble.vue       <- markdown, source badges
    │   ├── chat/KbResultCard.vue        <- renderKBResults, formatEntry
    │   ├── chat/TabChooser.vue          <- tabPrompt, chooseTab
    │   ├── chat/SubmitUnanswered.vue    <- unanswered flow
    │   ├── contact/ContactPanel.vue     <- #cpPanel
    │   └── admin/AdminPanel.vue, AdminUnanswered.vue, AdminContact.vue, AdminList.vue
    ├── composables/   useAuth, useTheme (wraps useTogeTheme), useKnowledgeBase, useChat, useAdmin
    ├── lib/           search, intents, markdown, format, kb-parse   (pure, unit-tested)
    ├── api/           kb, logger, chat (Groq proxy), guide (Sprout Guide)
    ├── stores/        auth, kb, chat (Pinia)
    └── types/         kb, chat, admin
```

## Principles
- `lib/` holds pure logic extracted from legacy lines 605-1043 so it can be unit-tested and diffed against legacy.
- Components are thin; Toge components and tokens first.
- Endpoints come from `import.meta.env.VITE_*`; no secrets in the client.
- One legacy section migrates per branch/PR; `migration-map.md` tracks status.
