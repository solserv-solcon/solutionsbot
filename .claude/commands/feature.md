---
description: Run the full feature workflow (branch, BA plan, lead-dev review, implement, review, test)
argument-hint: <feature description>
---

Feature: $ARGUMENTS

1. Run `/start-branch` for this feature unless already on a non-protected branch.
2. Launch `business-analyst` to write `plan/<slug>.md`.
3. Launch `lead-dev` to review it. If `CHANGES REQUESTED`, send findings back to the BA and re-review (max 2 rounds, then ask me).
4. Show me the approved plan and STOP. Wait for my explicit sign-off before any implementation.
5. After sign-off, launch the implementer agents for the planned tasks only.
6. Run `/review`, then `/test`, then `lead-dev` final check.
7. Tell me the result and that I can commit, then run `/open-pr`. Do not commit or push.
