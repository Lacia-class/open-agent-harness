# Public Example Pack

This pack contains safe examples that exercise the harness without private accounts, credentials, payment flows, or proprietary knowledge graphs.

## Example: Mechanism Classifier Review

Cases:

1. A function catches all errors and returns success with empty data.
2. A test timeout is increased until a broken async flow appears stable.
3. A payment integration is marked complete while the charge function is a placeholder.
4. A real external integration is wrapped by an adapter, with unit tests using a fake adapter and a separate integration test for the real provider.

Expected classification:

- 1: signal cutting
- 2: validation theater
- 3: metabolic debt evasion
- 4: OK if evidence boundaries are honest

## Example: SOP Modeling

Use a harmless local workflow:

```text
Goal: convert Markdown notes to a PDF.
Resources: source file, converter, output directory.
States: source-ready, render-running, render-failed, render-succeeded, visually-accepted.
Evidence: output file exists, render log, opened PDF screenshot or text extraction.
Risk gates: none.
```

