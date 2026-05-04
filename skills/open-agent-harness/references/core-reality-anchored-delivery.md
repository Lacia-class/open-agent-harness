# Reality-Anchored Delivery

Use this protocol when work creates artifacts, modifies systems, interacts with external services, or could be falsely marked complete.

## Completion Hierarchy

Judge completion in this order:

1. User-visible final artifact
2. Runtime artifact or live system state
3. Derived summaries, logs, reports, manifests
4. Agent or implementer self-report

Derived summaries and self-report never replace real artifacts.

## Delivery Contract

Before substantial work, define:

```text
Final user-visible artifact:
Runtime artifact:
Derived summaries:
Acceptance surfaces:
Evidence that cannot count as PASS:
Risk gates:
```

## Evidence Ledger

Every `done` item needs evidence:

```text
Item:
Status: todo / doing / blocked / done
Evidence:
Validation time:
Regression protection:
Known unmeasured areas:
```

## Strict Red Lines

Mechanism classifiers are diagnostic axes, not literal-only examples:

- **Signal cutting**: hiding or silencing errors so real failure cannot surface.
- **Conflict anesthesia**: hard-coded exceptions, heuristic core resets, or degraded mocks that make the system unable to feel real conflicts.
- **Validation theater**: changing tests, timeouts, inputs, upstream paths, or acceptance environments to make broken work appear valid.
- **Metabolic debt evasion**: leaving placeholders, TODOs, fragments, or assumed human completion while claiming done.
- **Boundary bypass**: any new method that avoids the difficult boundary instead of fixing the defect.

Reasonable mocks, fallbacks, and timeout changes are allowed only when the evidence boundary proves they do not impersonate production capability or weaken system dynamics.

## Report Format

```text
PASS / FAIL / PARTIAL: one-sentence reason.

Real artifacts:
Validation evidence:
Black-box result:
Negative/probe result:
Unmeasured areas:
Regression protection:
Remaining blockers:
```

