# Open Agent Harness

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache--2.0-blue.svg)](LICENSE)
[![Skill validated](https://img.shields.io/badge/skill-validated-brightgreen.svg)](skills/open-agent-harness/SKILL.md)
[![Runtime neutral](https://img.shields.io/badge/runtime-Codex%20%7C%20Claude%20%7C%20Agents-black.svg)](#agent-runtime-support)

[English](README.md) | [中文](README.zh-CN.md)

**Stop letting agents finish tasks that reality never accepted.**

Open Agent Harness is a portable protocol pack for AI agents that need to deliver real work, not polished self-reports. It gives Codex, Claude, and other Markdown-capable agents a shared operating system for artifact-backed delivery, convergence review, anti-overfitting rule updates, and reusable SOP design.

If you have ever seen an agent say "done" while the app is broken, the file is missing, the test was weakened, or the user-visible result was never opened, install this before your next serious agent task.

## Why Star This

Star this repo if you want agents that:

- prove completion with observable artifacts instead of vibes
- separate real output from summaries, logs, and self-report
- review work until issue count and evidence gaps converge
- stop turning one lucky example into a permanent rule
- build SOPs as state machines, not fragile click lists
- keep private knowledge graphs, profiles, credentials, and real workflows out of public core
- run across Codex, Claude, and other agent runtimes

This is not another prompt collection. It is a small harness for making agent work harder to fake.

## Install In 30 Seconds

### Codex

```bash
mkdir -p "$HOME/.codex/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.codex/skills/open-agent-harness"
```

### Claude

```bash
mkdir -p "$HOME/.claude/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.claude/skills/open-agent-harness"
```

Prefer copying instead of symlinking?

```bash
cp -R skills/open-agent-harness "$HOME/.codex/skills/open-agent-harness"
cp -R skills/open-agent-harness "$HOME/.claude/skills/open-agent-harness"
```

Then invoke the skill:

```text
Use $open-agent-harness to design and validate this workflow.
```

## What You Get

The installable skill lives at `skills/open-agent-harness/` and is self-contained:

```text
skills/open-agent-harness/
  SKILL.md
  agents/openai.yaml
  references/
  scripts/release-audit.sh
```

The protocols inside it cover:

| Protocol | What It Prevents |
|---|---|
| Collaboration Calibration | front-loading the user with a giant questionnaire |
| Reality-Anchored Delivery | "done" claims without user-visible evidence |
| Convergent Review | one-pass reviews that stop before quality stabilizes |
| Generalization Triage | benchmark-fitted or anecdote-fitted rules |
| Meta-Recursive Design | method design that never tests itself |
| Compound-Interest Engineering | useful lessons disappearing after a thread ends |
| Universal SOP Engine | brittle click lists with no state model or recovery path |

## The Core Principle

```text
No observable artifact, no completion.
No independent validation, no PASS.
No adapter boundary, no public core.
```

Open Agent Harness separates three layers:

1. **Core protocols**: portable methods that work without private context.
2. **Adapters**: optional bridges to runtimes, validators, knowledge sources, terminology, and domain SOP resources.
3. **Private packs**: user-specific profiles, credentials, private knowledge graphs, and real operational workflows.

That means you can open source the method without leaking the machinery behind your private work.

## Agent Runtime Support

The harness is runtime-neutral.

- Codex installs `skills/open-agent-harness/` and may use `templates/user-level/AGENTS.md`.
- Claude installs `skills/open-agent-harness/` and may use `templates/user-level/CLAUDE.md`.
- Other agents can read the Markdown protocols directly.

Runtime-specific orchestration belongs behind `adapters/agent-runtime-adapter.md`, not in the public core.

## Repository Layout

```text
core/                       Source protocols for maintainers
adapters/                   Source adapter interfaces for maintainers
skills/open-agent-harness/  Installable self-contained skill package
packs/public-example-pack/  Safe examples for testing the harness
private/                    Local-only extension area; ignored by git except README
templates/                  Safe user-level AGENTS.md / CLAUDE.md templates
docs/                       Architecture and release boundary docs
tools/                      Release and leakage audit helpers
```

## Release Safety

Before publishing changes, run:

```bash
bash tools/release-audit.sh
python3 /path/to/quick_validate.py skills/open-agent-harness
```

The skill also includes its own audit:

```bash
bash skills/open-agent-harness/scripts/release-audit.sh
```

## What This Intentionally Does Not Include

- private user profiles or personal `AGENTS.md` / `CLAUDE.md`
- API keys, tokens, session data, accounts, payment flows, or service inventories
- proprietary course notes, private knowledge graphs, or private MCP data
- site-specific browser SOPs for real accounts, payments, or verification flows

If a workflow only works because of a private graph, account ledger, or personal profile, it belongs in an adapter or private pack, not in the public kernel.

## Migration From Private Harnesses

If you are extracting a public version from a personal or internal harness, follow `docs/migration-from-private-harness.md`.

The short version:

- keep the mechanism
- remove the private constants
- move domain knowledge into adapters
- move personal calibration into profile packs
- publish safe examples, not real operational paths

## Contributing And Security

See `CONTRIBUTING.md` and `SECURITY.md` before proposing changes. Public contributions must keep private knowledge sources, profiles, credentials, and real operational SOPs out of the core.

## License

Apache License 2.0. See `LICENSE`.

