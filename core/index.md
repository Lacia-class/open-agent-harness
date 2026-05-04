# Core Protocol Index

The public harness kernel is a set of composable protocols. Use the smallest set that covers the task.

| Protocol | Use When | Primary Output |
|---|---|---|
| `collaboration-calibration.md` | A human is actively collaborating and interaction depth/pace matters | low-friction interaction choice |
| `reality-anchored-delivery.md` | Work creates artifacts, modifies systems, or can be falsely marked done | evidence-backed PASS/FAIL |
| `convergent-review.md` | Reviewing code, docs, designs, skills, or workflows | findings with convergence evidence |
| `generalization-triage.md` | Updating rules from examples, failures, benchmarks, or experiments | anti-overfitting decision |
| `meta-recursive-design.md` | Designing methods, SOPs, skills, systems, or review processes | executable design change |
| `compound-interest-engineering.md` | Turning repeated workflow lessons into reusable assets | reusable asset with boundaries |
| `universal-sop-engine.md` | Modeling repeatable operational workflows | state-transition SOP model |

## Composition Order

Default order for complex tasks:

1. `collaboration-calibration` lowers startup friction.
2. `reality-anchored-delivery` defines observable artifacts.
3. `generalization-triage` prevents sample-fitted rule changes.
4. `meta-recursive-design` handles open design tension.
5. `convergent-review` verifies the produced artifact.
6. `compound-interest-engineering` packages what should compound.

This order is not a rigid checklist. It is a routing map. Use fewer protocols for small tasks.

## Adapter Rules

Core protocols must not depend on a private knowledge graph. If domain knowledge is useful, call a knowledge-source adapter through the interface in `../adapters/knowledge-source-interface.md`.

Other runtime-specific surfaces are also adapters:

- agent orchestration: `../adapters/agent-runtime-adapter.md`
- artifact validation: `../adapters/validation-adapter.md`
- domain SOP resources: `../adapters/domain-sop-adapter.md`
- user preferences: `../adapters/user-profile-adapter.md`
- local theory vocabulary: `../adapters/terminology-adapter.md`

If a protocol stops working without one user's private adapter, it is not public core.
