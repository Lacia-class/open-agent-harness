# Open Source Boundaries

This repository is safe to publish only if the following remain true.

## Allowed In Public Core

- general protocols
- abstract mechanism classifiers
- safe examples
- adapter interfaces
- null or toy adapters
- release audit tools
- synthetic user profiles
- generic sensitive-resource categories without real values or site paths

## Keep Private

- personal user models and collaboration profiles
- private knowledge graph data
- proprietary course notes or episode topology
- API keys, tokens, OTP links, passwords, cookies
- real account, payment, phone, card, or service inventories
- site-specific real browser SOPs involving accounts, payments, verification, or authorization
- local machine paths that reveal private resource structure
- private runtime orchestration commands and team dashboards

## Decoupling Rule

If a document says "use this specific private knowledge graph," rewrite it as:

```text
Use a knowledge-source adapter when domain-grounded claims are needed.
If no adapter is available, continue generically and mark domain-grounded claims unverified.
```

## Release Checklist

- [ ] `tools/release-audit.sh` passes.
- [ ] No files under `private/` are staged except `private/README.md`.
- [ ] No credential-like strings are present.
- [ ] No real SOP resource ledgers are present.
- [ ] Core files do not require a private adapter.
- [ ] Examples are harmless and reproducible locally.
