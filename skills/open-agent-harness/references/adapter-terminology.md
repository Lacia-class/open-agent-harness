# Terminology Adapter

Use this adapter to map local theory terms to public harness concepts.

Core protocols use generic terms:

| Core Term | Meaning |
|---|---|
| variable space | factors that can vary and affect decisions |
| discriminator model | how inputs are classified or mapped to variables |
| relation model | how variables imply conflict, compatibility, priority, risk, or action |
| mismatch check | whether a classification and relation model are being forced onto the wrong object |
| evidence boundary | which artifacts count as runtime truth and which are summaries |

## Mapping Contract

```text
local_term:
core_term:
definition:
scope:
examples:
source_or_owner:
public_ok: true / false
```

## Rule

Do not let a private theory vocabulary become a public core dependency. Keep the relation structure; move local names, citations, and private teaching materials into an adapter.

