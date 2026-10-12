# Behavior Spec (acceptance checklist per section)

User-visible behavior to preserve. Derived from the legacy code; verify against `legacy/index.html` ranges when in doubt. The BA appends criteria for each feature plan.

## Auth (lines 400-464)
- [ ] Login overlay shown until Google sign-in succeeds; status text updates
- [ ] Session restored from localStorage on reload; sign-out clears it
- [ ] User name and avatar shown in header after sign-in

## Theme (386-398)
- [ ] Toggle switches light/dark; choice persists across reloads

## Knowledge base load (829-947)
- [ ] Status bar shows loading, then ready; Refresh reloads the sheet
- [ ] Each sheet tab parsed into entries; chat input enabled only when loaded

## Search and replies (948-1043, 605-828)
- [ ] Small talk answered locally
- [ ] Definition questions find terminology entries
- [ ] Tab choice/switch prompts work; policy list and recommendation intents work
- [ ] Matching entries render as result cards with source badges

## Fallbacks (1044-1062, 1157-1355)
- [ ] No local match: Sprout Guide results shown; else model answer via proxy
- [ ] Typing indicator shown and removed; errors shown to the user

## Unanswered and contact (1063-1156)
- [ ] Unanswered prompt offers submit; submit logs to the logger; dismiss works
- [ ] Contact panel validates required fields; sends; shows status

## Admin (1356-1695, 466-495)
- [ ] Admin button only for admins; badge counts open items
- [ ] Tabs: Unanswered, Contact Us, Admins; reply, add/remove admin work

## Global
- [ ] Red "TEST PRODUCTION" banner present until told otherwise
- [ ] Every question logged via logAccess
