# Local Markdown Knowledge Adapter

Use this adapter for public or private Markdown notes that the user is allowed to share with the agent.

## Minimal Configuration

```text
adapter_name: local-markdown
root_paths:
include_globs:
exclude_globs:
citation_format:
```

## Rules

- Respect `.gitignore` and private directories.
- Do not index credentials, account inventories, OTP links, or payment data.
- Return file path and heading as provenance.
- If documents disagree, report the conflict instead of merging silently.

