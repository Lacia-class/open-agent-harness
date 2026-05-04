# Convergent Review

Use this protocol for code review, document review, design review, quality assurance, cross-reference checks, schema checks, or any high-reliability inspection.

## Review Contract

```text
Review target:
Real artifact:
Derived summary:
Authority / acceptance criteria:
Evidence that cannot count as PASS:
Inspectable evidence:
Unmeasured areas:
```

## Review Rounds

1. Evidence anchoring: confirm target, artifact, version, and evidence path.
2. Completeness: check missing promised pieces.
3. Consistency: check cross-file, cross-module, schema, and terminology alignment.
4. Precision: check counts, parameters, examples, IDs, ranges, and edge cases.
5. Reality acceptance: open, run, render, or probe the final artifact when possible.

Convergence requires:

- issue count decreases across rounds
- highest severity does not increase
- evidence gaps close or are explicitly downgraded
- real artifact validation is complete, or the result is marked PARTIAL

## Finding Types

| Type | Meaning |
|---|---|
| A Concept missing | A necessary term, object, or criterion is undefined |
| B Connection broken | References, dependencies, or interfaces do not connect |
| C Untested assumption | A claim relies on an unverified condition |
| D Structural defect | Organization causes loss, duplication, or ambiguity |
| E Evidence gap | A PASS/DONE claim lacks inspectable evidence |
| F Reality mismatch | The inspected object is not the final artifact |
| G Regression risk | A change may break already accepted behavior |
| H Acceptance pollution | Tests, oracles, inputs, or environments were weakened |

## Mechanism Classifier Overlay

When reviewing fixes, tests, mocks, fallbacks, or error handling, also classify the mechanism:

- signal cutting
- conflict anesthesia
- validation theater
- metabolic debt evasion
- boundary bypass

This overlay improves attribution but never replaces evidence. If a behavior hits multiple mechanisms, prefer the one closest to acceptance distortion. For example, replacing the real stack with mocks and calling it end-to-end PASS is primarily validation theater, not merely "mock usage."

