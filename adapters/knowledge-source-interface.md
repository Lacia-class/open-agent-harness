# Knowledge Source Interface

Core protocols must run without private knowledge sources. When domain knowledge helps, use an adapter with this shape.

## Capabilities

Adapters may implement any subset:

```text
concept_lookup(query) -> concept cards
relation_lookup(a, b) -> relations, contrasts, dependencies
source_trace(claim) -> citations or provenance
search(question, depth?) -> relevant concepts and evidence
evolution_trace(concept) -> timeline or version history
```

## Adapter Contract

An adapter must report:

```text
adapter_name:
data_source:
license_or_access_boundary:
freshness_or_verification_date:
implemented_capabilities:
unavailable_capabilities:
privacy_constraints:
```

## Failure Behavior

If an adapter is unavailable:

- continue with generic reasoning
- mark domain-grounded claims as unverified
- do not invent citations
- do not block core protocol execution unless the task explicitly requires that data source

## Private Knowledge Graph Rule

A private graph can implement this interface, but its data, citations, and proprietary topology do not belong in the public harness. Publish the adapter shape, not the private corpus.

