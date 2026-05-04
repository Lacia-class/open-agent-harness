---
name: open-agent-harness
description: Use when designing, executing, reviewing, or packaging AI agent workflows that need low-friction collaboration, reality-anchored delivery, convergent review, anti-overfitting generalization, meta-recursive design, compound-interest extraction, SOP state modeling, or adapter-based decoupling from private knowledge sources.
---

# Open Agent Harness

Use this skill to route complex agent work through reusable public protocols while keeping private knowledge, profiles, runtime details, and domain SOPs behind adapters.

## Routing

Use the smallest protocol set that covers the task:

- Live human collaboration and low-friction startup: read `references/core-collaboration-calibration.md`.
- Artifact-backed delivery and PASS/FAIL evidence: read `references/core-reality-anchored-delivery.md`.
- Review, audit, QA, and convergence evidence: read `references/core-convergent-review.md`.
- Avoiding sample-fitted rule updates: read `references/core-generalization-triage.md`.
- Designing methods, workflows, skills, or review systems: read `references/core-meta-recursive-design.md`.
- Packaging reusable lessons after work: read `references/core-compound-interest-engineering.md`.
- SOP state modeling: read `references/core-universal-sop-engine.md`.

## Adapter Boundary

Do not assume any private knowledge graph, user profile, runtime, validator, or domain SOP exists.

When needed, use:

- Knowledge sources: `references/adapter-knowledge-source-interface.md`, `references/adapter-null.md`, `references/adapter-local-markdown.md`, or `references/adapter-mcp-knowledge-graph.md`.
- Agent runtime orchestration: `references/adapter-agent-runtime.md`.
- Artifact validation: `references/adapter-validation.md`.
- Domain SOP resources: `references/adapter-domain-sop.md`.
- User preferences: `references/adapter-user-profile.md`.
- Local theory vocabulary: `references/adapter-terminology.md`.

If an adapter is unavailable, continue generically and mark domain-grounded or runtime-specific claims as unverified.

## Public Release Safety

When extracting or publishing harness material, read `references/open-source-boundaries.md`. When migrating from a private harness, read `references/migration-from-private-harness.md`.

For this repository, run `scripts/release-audit.sh` from the skill folder or `tools/release-audit.sh` from the repository root before claiming release readiness.
