# Open Agent Harness Project Instructions

This repository is the public Open Agent Harness kernel.

## Public Boundary

- Do not add private user profiles, credentials, account data, service inventories, real browser SOPs, or proprietary knowledge graph data.
- Put runtime-specific behavior behind `adapters/agent-runtime-adapter.md`.
- Put validation commands behind `adapters/validation-adapter.md`.
- Put domain SOP resources behind `adapters/domain-sop-adapter.md`.
- Put user preferences behind `adapters/user-profile-adapter.md`.
- Put local theory vocabulary behind `adapters/terminology-adapter.md`.

## Before Reporting PASS

Run:

```bash
bash tools/release-audit.sh
```

If the audit is not run, report the result as PARTIAL.

## Review Posture

Prefer mechanisms over surface checklists, observable artifacts over self-report, and adapters over hard dependencies.

