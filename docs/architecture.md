# Architecture

Open Agent Harness is split into three layers.

## 1. Core Protocols

Core protocols are portable and knowledge-source independent. They describe how an agent should:

- collaborate with low cognitive load
- anchor completion to observable artifacts
- review with convergence evidence
- resist overfitting from examples
- design methods recursively when useful
- extract reusable assets after work
- model SOPs as state transitions

## 2. Adapters

Adapters attach optional domain knowledge or tool-specific evidence.

Examples:

- local Markdown notes
- public documentation search
- MCP knowledge graph
- internal company knowledge base
- agent runtime orchestration
- artifact validators
- domain-specific SOP resources
- user preference profiles
- terminology maps

The core must degrade gracefully when an adapter is unavailable.

## 3. Private Packs

Private packs contain user-specific data:

- profiles
- credentials
- private SOPs
- proprietary knowledge graphs
- real account/resource ledgers

They can extend the harness locally but must not be required by the public kernel.

## Dependency Rule

```text
core -> adapters interface -> optional adapter implementation -> private pack
```

Reverse dependencies are forbidden. Core protocols may mention the adapter interface but must not name or require a private graph.
