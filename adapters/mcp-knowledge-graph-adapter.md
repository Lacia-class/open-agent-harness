# MCP Knowledge Graph Adapter

Use this adapter shape for a knowledge graph exposed through MCP tools.

## Generic Tool Mapping

```text
concept_lookup(query)       -> get_concept-like tool
search(question, depth)     -> semantic or graph search tool
relation_lookup(a, b)       -> concept lookup plus relation extraction
evolution_trace(concept)    -> trace/version/timeline tool
source_trace(claim)         -> citations returned by the graph
```

## Boundary

The public harness should define this interface only. Private graph schemas, proprietary course content, exact concept topology, and non-public citations stay outside the repository.

## Degraded Mode

If the MCP server is missing:

```text
Adapter status: unavailable.
Core protocol: continue.
Domain-grounded claims: unverified.
Required next step: install or configure an adapter only if the user explicitly needs that source.
```

