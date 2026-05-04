# Security Policy

## Sensitive Content

Do not open public issues or pull requests containing:

- API keys, tokens, cookies, passwords, session data, or private URLs
- real account inventories or recovery flows
- payment, identity, phone, card, or one-time-resource ledgers
- proprietary knowledge graph data or non-public source material
- site-specific automation that can affect real accounts or external services

If sensitive content was committed, rotate the exposed secret and remove it from history before publishing.

## Reporting

For security-sensitive reports, contact the repository maintainer privately. Do not include live credentials or real user data in the report.

## Maintainer Release Gate

Before a public release:

```bash
bash tools/release-audit.sh
```

Passing the audit is necessary but not sufficient. Also review new files manually for private context, private knowledge-source coupling, and real operational SOP leakage.

