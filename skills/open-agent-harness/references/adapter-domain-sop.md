# Domain SOP Adapter

Use this adapter when a generic SOP state model needs domain-specific tools, resources, or risk gates.

Core SOPs define states, transitions, evidence, and recovery. Domain adapters define domain vocabulary and sensitive-resource handling.

## Capability Contract

```text
resource_types() -> list
risk_gates() -> list
state_observers() -> list
transition_helpers() -> list
redaction_rules() -> list
recovery_patterns() -> list
```

## Public Boundary

Public domain adapters may include:

- harmless local workflows
- toy API workflows
- synthetic resource ledgers
- public documentation workflows

Private domain adapters should contain:

- real account flows
- identity, payment, phone, card, or one-time-resource inventories
- site-specific browser paths
- credentials or session recovery procedures
- external-service automation that can affect real users or accounts

## Rule

If publishing a domain adapter would teach a concrete private or sensitive operational path, keep it private and publish only the abstract state model.

