# Null Knowledge Adapter

Use this adapter when no external knowledge source is configured.

```text
adapter_name: null
data_source: none
implemented_capabilities: none
privacy_constraints: none
```

Behavior:

- core protocols still run
- domain-specific claims are marked unverified
- no citations are fabricated
- the agent may ask for source material only when the task cannot proceed safely without it

