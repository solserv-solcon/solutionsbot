# Migration Map

Status: `todo` | `planned` | `in-progress` | `done`. Update on every migration PR. Legacy lines refer to `legacy-inventory.md`.

| Legacy (lines) | Functions | New file(s) | Status | Plan |
|---|---|---|---|---|
| 948-1043 | search, tokenize, expand, STOPWORDS, formatEntry, buildReply, smallTalk | `src/lib/search.ts` | todo | |
| 605-828 | detect*, extractDefinitionTerm, searchTerminologies, buildPolicyList, respondToTab | `src/lib/intents.ts`, `src/components/chat/TabChooser.vue` | todo | |
| 829-947 | esc, linkify, loadSheet, parseTab, splitCSV | `src/lib/format.ts`, `src/lib/kb-parse.ts`, `src/api/kb.ts`, `src/stores/kb.ts` | todo | |
| 497-537 | renderMarkdown | `src/lib/markdown.ts`, `MessageBubble.vue` | todo | |
| 538-583 | formatKBContext, tab badges | `src/lib/format.ts`, `MessageBubble.vue` | todo | |
| 386-398 | applyTheme, toggleTheme | `src/composables/useTheme.ts` (useTogeTheme) | todo | |
| 400-464 | Google Sign-In | `src/composables/useAuth.ts`, `src/stores/auth.ts`, `LoginOverlay.vue` | todo | |
| 584-604 | logAccess | `src/api/logger.ts` | todo | |
| 1044-1062 | Sprout Guide | `src/api/guide.ts` | todo | |
| 1157-1355 | Chat, sendMessage | `src/composables/useChat.ts`, `src/api/chat.ts`, `ChatWindow.vue`, `ChatInput.vue`, `KbResultCard.vue`, `StatusBar.vue` | todo | |
| 1103-1156 | Unanswered flow | `SubmitUnanswered.vue` | todo | |
| 1063-1102 | Contact Us | `ContactPanel.vue` | todo | |
| 466-495, 1356-1695 | Admin | `useAdmin.ts`, `src/components/admin/*` | todo | |
| 332-378 | Header and layout | `AppHeader.vue`, `App.vue` | todo | |

Suggested order: lib (search, intents, kb-parse) -> api -> auth/theme -> chat -> contact/unanswered -> admin.
