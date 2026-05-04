# Universal SOP Engine

Use this protocol when turning a messy workflow into a repeatable SOP across browsers, desktop apps, CLIs, APIs, files, documents, spreadsheets, agents, automations, or human-in-the-loop steps.

## SOP As State System

Do not write only a click list. Model:

```text
States:
Transitions:
Resources:
Evidence:
Risk gates:
Recovery paths:
Stop conditions:
```

## Resource Ledger

Track resource lifecycle explicitly:

- credentials and permissions
- accounts and sessions
- quotas and usage counters
- files and generated artifacts
- phone numbers, cards, or one-time resources
- human approvals
- async jobs

Public SOPs must not include real credentials, account details, payment resources, OTP links, or site-specific exploitation paths.

## Low-Friction Exploration

When documentation is missing:

1. Start with a conservative temporary boundary.
2. Explore the next reversible step.
3. Record observed state and evidence.
4. Ask the user only at irreversible or sensitive gates.
5. Convert discoveries into state transitions, not prose memory.

## SOP Output Template

```text
Goal:
Actors:
Tools:
Preconditions:
Resources:
State model:
Transition table:
Evidence ledger:
Risk gates:
Recovery paths:
Completion criteria:
Open questions:
```

