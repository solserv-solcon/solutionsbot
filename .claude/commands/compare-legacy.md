---
description: Compare a legacy function or section with its new implementation (use when something breaks)
argument-hint: <function-or-section>
---

For `$ARGUMENTS`:
1. Find it in `docs/legacy-inventory.md` for the line range, and in `docs/migration-map.md` for the new file.
2. Show the legacy code (read only that range of the legacy index.html) next to the new code.
3. List behavior differences against `docs/behavior-spec.md`: inputs, outputs, DOM/IDs, endpoints, edge cases, error handling.
4. Point to the most likely cause of the reported break. Do not edit anything.
