# Toge UI Usage

Toge UI is Sprout's Vue design system, distributed as a shadcn-vue registry. Storybook: https://toge-ds.azurewebsites.net/storybook/ (docs render client-side; read via `iframe.html?id=<id>&viewMode=docs`).

## Install
- Full installer: `curl -fsSL https://toge-ds.azurewebsites.net/install.mjs -o /tmp/toge-install.mjs && node /tmp/toge-install.mjs` (runs a remote script: user approval required). Choose a set: Base UI, Fintech, or Sidekick.
- One component: `npx shadcn-vue@latest add @toge/ui/toge-<name>`
- Dark mode: `npx shadcn-vue@latest add @toge/ui/toge-styles @toge/ui/toge-theme`, init script in `index.html`, `useTogeTheme()`.
- Update: rerun the installer and overwrite.

## Mapping (proposed; confirm in each plan)
| Legacy UI | Toge component |
|---|---|
| Chat input, messages, streaming, sources, suggested prompts | Chat set (Input, Markdown, Streaming Text, Sources, Suggested Prompts) |
| Chips | Suggested Prompts / Badge |
| Contact Us panel | Drawer or Dialog + Form, Input |
| Admin panel | Dialog/Drawer + Tabs, Data Table, Avatar, Badge |
| Login overlay | Card + Button |
| Status bar / banner | Banner, Alert |
| Result cards | Card |

## Installed components log
| Date | Component | Branch | Notes |
|---|---|---|---|
