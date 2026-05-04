# Generalization Triage

Use this protocol when a failure sample, benchmark, experiment, or success story might update code, prompts, skills, memory, or long-term rules.

## Core Rule

A sample can show where something happened. It cannot directly define the model that should be written.

## Layer Triage

Before changing core logic, classify the issue:

1. **Object layer**: the real system state or output is wrong.
2. **Representation layer**: the system may be right, but exported artifacts or summaries misrepresent it.
3. **Measurement layer**: the test, scorer, query, monitor, or inspection path is wrong.

If these layers are not separated, do not write a semantic patch.

## Modelization Gate

A reusable fix needs:

```text
Variable space:
Discriminator model: how inputs map to variables
Relation model: how variables imply conflict, priority, risk, or action
De-constantization: which sample constants must not enter the rule
```

## Rule Strength

Classify every proposed long-term update:

- **Hard rule**: stable safety, privacy, acceptance, or integrity constraint.
- **Default strategy**: normally useful, but overridable by context or risk gates.
- **Diagnostic axis**: helps classify; does not prescribe behavior alone.
- **Example / anti-pattern**: illustrative only.
- **Candidate observation**: not ready for long-term assets.

## Decision Order

1. Triage object / representation / measurement.
2. Remove sample constants.
3. Build variable and relation model.
4. Define in-domain and out-of-domain boundaries.
5. Design falsification probes.
6. Change logic or long-term rules only after the previous steps hold.

