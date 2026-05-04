# Contributing

Thanks for improving Open Agent Harness.

## Before Opening A PR

Run:

```bash
bash tools/release-audit.sh
```

Then check:

- The change belongs in public core, not a private pack.
- No real credentials, tokens, sessions, account inventories, or one-time resources are included.
- No private knowledge graph data or proprietary citations are included.
- Runtime-specific behavior is behind an adapter.
- Domain SOP details are abstract unless they are harmless public examples.
- New rules have a strength: hard rule, default strategy, diagnostic axis, example, or candidate observation.

## Design Standards

Prefer:

- mechanisms over surface checklists
- observable artifacts over self-report
- adapters over hard dependencies
- examples that are synthetic or harmless
- explicit unmeasured areas over fake completeness

Avoid:

- vendor lock-in in core protocols
- personal profiles in public files
- site-specific operational SOPs with real side effects
- rules extracted from one anecdote without generalization triage

