# Migration From A Private Harness

Use this guide when extracting a private agent harness into the public kernel.

## Extraction Passes

### 1. Remove Private Identity

Move these to a private pack or synthetic example:

- personal collaboration profiles
- cognitive or psychological inferences
- language, tone, or fatigue preferences tied to one person
- private memory policies

Public replacement: `adapters/user-profile-adapter.md`.

### 2. Remove Private Knowledge Sources

Move these to adapters or private packs:

- private knowledge graph data
- proprietary notes
- source-specific citations that cannot be redistributed
- theory vocabulary that only works with one corpus

Public replacement: `adapters/knowledge-source-interface.md` and `adapters/terminology-adapter.md`.

### 3. Remove Runtime Lock-In

Move these to runtime adapters:

- vendor-specific agent names
- local team orchestration commands
- desktop app assumptions
- model-routing rules
- context inheritance assumptions

Public replacement: `adapters/agent-runtime-adapter.md`.

### 4. Remove Real Operational SOPs

Move these to private domain packs:

- real account registration or recovery paths
- payment, phone, identity, or one-time-resource ledgers
- site-specific browser automation
- external service flows with real side effects

Public replacement: `core/universal-sop-engine.md` plus `adapters/domain-sop-adapter.md`.

### 5. Replace Tool-Specific Validation

Move project-specific validators into adapters:

- local scripts
- browser tools
- renderers
- schema validators
- external probes

Public replacement: `adapters/validation-adapter.md`.

## Public Kernel Test

Ask this before publishing:

```text
Would the core still make sense to a user with no private graph, no private profile, no private runtime, and no real SOP resources?
```

If no, the file still contains private harness coupling.

