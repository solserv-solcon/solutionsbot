# Legacy Inventory (index.html @ 1bd3800)

Every JS section and function with its line range, so a section can be read without opening the whole file (`Read` with offset/limit, or Grep). Use with `migration-map.md`.

| Lines | Section | Functions / globals | Purpose |
|---|---|---|---|
| 381-383 | Config | `CLIENT_ID`, `STORAGE_KEY`, `THEME_KEY` | Google client id, localStorage keys |
| 386-398 | Theme | `applyTheme`, `toggleTheme` | light/dark toggle persisted in localStorage |
| 400-464 | Google Sign-In | `applySignedInUser`, `initGoogleSignIn`, `onGoogleSignIn`, `restoreSession`, `signOut` | login overlay, session restore, sign-out |
| 466-495 | Endpoints + admin list | `SHEET_ID`, `LOGGER_URL`, `GROQ_WORKER`, `CONTACT_EMAIL`, `ADMIN_EMAILS`, `ADMIN_FALLBACK`, `isAdmin`, `loadAdminList` | endpoints, hardcoded admins, dynamic admin list |
| 495-537 | Markdown | `SPROUT_GUIDE`, `renderMarkdown` | render model/KB text to HTML |
| 538-583 | KB context / badges | `formatKBContext`, `TAB_COLORS`, `getTabColor`, `getSourceBadges`, `athenaLabel` | context for the model, tab colour badges |
| 584-604 | Access logging | `logAccess` | silently log who asked what |
| 605-828 | Intent + tab logic | `detectDefinitionIntent`, `extractDefinitionTerm`, `searchTerminologies`, `detectTabChoice`, `detectTabSwitch`, `detectPolicyListIntent`, `detectRecommendationIntent`, `buildPolicyList`, `getPresentTabs`, `tabIcon`, `tabPrompt`, `chooseTab`, `respondToTab`, `rand` | decide what the user is asking for; tab chooser flow |
| 829-947 | Utils + KB load | `esc`, `linkify`, `KB_URL`, `loadSheet`, `parseTab`, `splitCSV` | HTML escape, links, fetch + parse the sheet |
| 948-1043 | Search | `STOPWORDS`, `stripQuestionPattern`, `tokenize`, `expand`, `search`, `formatEntry`, `buildReply`, `smallTalk` | local KB search and reply building |
| 1044-1062 | Sprout Guide | `stripHtml`, `searchSproutGuide`, `buildGuideResults` | fallback search of guide.sprout.ph |
| 1063-1102 | Contact Us | `openContact`, `closeContact`, `updateCpBtn`, `sendContact` | contact side panel and submit |
| 1103-1156 | Unanswered flow | `makeSubmitHtml`, `showSubmitFromGuide`, `showSubmitNotSatisfied`, `showSubmitPrompt`, `updateSubmitBtn`, `disableSubmitButtons`, `dismissSubmit`, `submitUnanswered` | offer to submit an unanswered question |
| 1157-1355 | Chat | `renderKBResults`, `sendMessage` (1192-1334, Groq call ~1282), `ask`, `setSt`, `setWelcome`, `addMsg`, `addTyping`, `removeTyping` | main chat loop and message rendering |
| 1356-1695 | Admin panel | `countOpenRows`, `fetchAdminCounts`, `openAdminPanel`, `closeAdminPanel`, `tabBadge`, `updateTabBadges`, `switchAdminTab`, `loadAdminsTab`, `renderAdminsTab`, `addNewAdmin`, `removeAdmin`, `loadAdminSubmissions`, `formatAdminDate`, `getInitials`, `toggleAdminCard`, `renderAdminSubmissions`, `sendAdminReply` | admin tabs, counts, replies |

## Markup and CSS ranges
| Lines | Element |
|---|---|
| 11-60 | CSS tokens, light and dark, base layout |
| 61-297 | CSS: header, status bar, chat, chips, input, footer, result cards, login, panels, admin |
| 299-315 | `#loginOverlay` |
| 316-331 | `#cpOverlay`, `#cpPanel` |
| 332-378 | `.app` header, banner, status bar, `#messages`, `#chips`, input row, footer |
| 1696-1716 | `#adminOverlay` |

Line numbers are exact for commit `1bd3800`. If the legacy file is moved, keep this table unchanged; it describes `legacy/index.html`.
