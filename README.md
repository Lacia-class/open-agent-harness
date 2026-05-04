# Open Agent Harness

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![Runtime: Codex | Claude | Any](https://img.shields.io/badge/runtime-Codex_%7C_Claude_%7C_Any-green.svg)](#agent-runtime-support)

[English](README.md) | [中文](README.zh-CN.md)

AI agents are great at saying "done." They're less great at actually being done — the file isn't there, the test got weakened, the app is broken, or the "result" is a summary of what should have happened.

Open Agent Harness is a set of portable protocols that make agent work **evidence-based**. No artifact, no completion. It plugs into Codex, Claude, or any Markdown-capable agent runtime as a self-contained skill.

## Quick Start

```sh
# Codex
mkdir -p "$HOME/.codex/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.codex/skills/open-agent-harness"

# Claude
mkdir -p "$HOME/.claude/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.claude/skills/open-agent-harness"
```

Then tell your agent:

```
Use $open-agent-harness to design and validate this workflow.
```

That's it. The skill is self-contained — no dependencies, no build step.

## The Problem

Most agent frameworks optimize for *generation*. This one optimizes for *verification*.

When an agent says a task is complete, these protocols ask: where's the proof? An observable artifact, an independent validation pass, a convergence check that doesn't stop after one round. The difference between "the agent said it worked" and "it actually worked" is surprisingly large, and that gap is where real productivity gets lost.

## What's Inside

The installable skill at `skills/open-agent-harness/` contains seven protocols:

| Protocol | Prevents |
|---|---|
| **Collaboration Calibration** | Agents front-loading users with 20-question surveys before doing anything |
| **Reality-Anchored Delivery** | "Done" claims with no user-visible evidence |
| **Convergent Review** | One-pass reviews that miss what a second pass would catch |
| **Generalization Triage** | Rules overfitted to one lucky example |
| **Meta-Recursive Design** | Methods that never get tested on themselves |
| **Compound-Interest Engineering** | Hard-won lessons vanishing after a thread ends |
| **Universal SOP Engine** | Brittle click-lists with no state model or recovery path |

## Architecture

```
core/               Portable protocol definitions
adapters/            Bridges to runtimes, validators, domain tools
skills/              Installable skill package (this is what you use)
packs/               Public example packs for testing
private/             Local-only extensions (.gitignored)
templates/           Starter AGENTS.md / CLAUDE.md for your projects
```

The design separates three layers: **core protocols** (open, portable), **adapters** (runtime-specific glue), and **private packs** (your credentials, profiles, knowledge graphs — never committed). You open-source the method without leaking your setup.

## Agent Runtime Support

The harness is runtime-neutral by design.

- **Codex** — install the skill + optionally use `templates/user-level/AGENTS.md`
- **Claude** — install the skill + optionally use `templates/user-level/CLAUDE.md`
- **Others** — any agent that reads Markdown can consume the protocols directly

## Release Safety

```sh
bash tools/release-audit.sh
bash skills/open-agent-harness/scripts/release-audit.sh
```

These scripts check for accidental leakage of private content before you push.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) and [SECURITY.md](SECURITY.md). The one hard rule: no private knowledge, credentials, or real operational SOPs in the public core.

## License

[Apache License 2.0](LICENSE)

