# Open Agent Harness

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![Runtime: Codex | Claude | Any](https://img.shields.io/badge/runtime-Codex_%7C_Claude_%7C_Any-green.svg)](#supported-agent-runtimes)

[English](README.md) | [中文](README.zh-CN.md)

Anyone who has used AI agents has seen this: the agent confidently says "done," and then you check. The file was never created. The tests were quietly weakened. The page does not open. Or the only output is a polished summary of "what I did."

Agents don't lack generation. They lack delivery discipline.

Open Agent Harness is a portable set of protocols that adds an evidence layer to agent workflows: no observable artifact, no completion; no independent validation, no pass. It installs as a skill for Codex, Claude, or any Markdown-capable agent runtime. Non-invasive, dependency-free, ready to use.

## 30-Second Start

```sh
# Codex
mkdir -p "$HOME/.codex/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.codex/skills/open-agent-harness"

# Claude
mkdir -p "$HOME/.claude/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.claude/skills/open-agent-harness"
```

After installing, tell your agent:

```
Use $open-agent-harness to design and validate this workflow.
```

No dependencies. No build step. Two commands.

## What It Solves

Most agent frameworks optimize generation quality. This project optimizes verification quality.

When an agent claims a task is complete, these protocols ask: where is the evidence? An observable artifact, an independent validation pass, a review loop that converges to stability, not a self-written "task summary." The gap between "the agent says it works" and "it actually works" is larger than it looks.

## Included Protocols

The installable directory `skills/open-agent-harness/` contains seven protocols:

| Protocol | Prevents |
|---|---|
| **Collaboration Calibration** | Agents front-loading users with a 20-question survey before doing any work |
| **Reality-Anchored Delivery** | "Done" claims with no user-visible evidence |
| **Convergent Review** | One-pass reviews that miss what a second pass would catch |
| **Generalization Triage** | Turning one lucky success into a permanent rule |
| **Meta-Recursive Design** | Design methods that never accept their own validation burden |
| **Compound-Interest Engineering** | Hard-won lessons disappearing when the thread ends |
| **Universal SOP Engine** | Brittle checklists with no state model or recovery path |

## Architecture

```
core/               Portable protocol definitions
adapters/            Bridges to runtimes, validators, and domain tools
skills/              Installable skill package (this is what you use)
packs/               Public example packs for testing
private/             Local extension area (.gitignored)
templates/           Project-level AGENTS.md / CLAUDE.md templates
```

The design has three layers: **core protocols** are the public, portable method; **adapters** connect runtimes and tools; **private packs** hold your own credentials, knowledge graphs, and real workflows, and never enter the repository. Open-source the method, keep private configuration local.

## Supported Agent Runtimes

Harness is not tied to a specific runtime.

- **Codex** — install the skill, optionally with `templates/user-level/AGENTS.md`
- **Claude** — install the skill, optionally with `templates/user-level/CLAUDE.md`
- **Others** — if it can read Markdown, it can use the protocols

## Release Checks

```sh
bash tools/release-audit.sh
bash skills/open-agent-harness/scripts/release-audit.sh
```

These scripts check for accidental leakage of private content before you push.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) and [SECURITY.md](SECURITY.md). The one hard rule: do not commit private knowledge, credentials, or real operational SOPs to the public repository.

## License

[Apache License 2.0](LICENSE)
