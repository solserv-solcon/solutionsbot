---
description: Look up a Toge UI component and add it to the project
argument-hint: <component-name>
---

Add the Toge component `$ARGUMENTS`:
1. Read its docs in the browser: https://toge-ds.azurewebsites.net/storybook/iframe.html?id=toge-ui-$ARGUMENTS--docs&viewMode=docs (try a category prefix such as `toge-ui-forms-` or `toge-ui-chat-` if not found).
2. Show me the props and a usage example.
3. After I confirm, run `npx shadcn-vue@latest add @toge/ui/toge-$ARGUMENTS` and log it in `docs/toge-usage.md`.
