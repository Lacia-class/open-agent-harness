# Open Agent Harness

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![Runtime: Any LLM](https://img.shields.io/badge/runtime-Codex_%7C_Claude_%7C_Any-green.svg)](#30-second-start)

[English](README.md) | [中文](README.zh-CN.md)

> Agents don't lack generation capability. They lack a reverence for reality and delivery discipline.

Have you ever experienced this working with an AI agent?
- 😡 **The People-Pleaser**: Confidently says "Bug fixed!", yet the code crashes immediately when you run it.
- 🎭 **Validation Theater**: Secretly weakens the test cases when it can't figure out a fix, then reports "All tests passed."
- 🏃 **Metabolic Debt Evasion**: Leaves behind a trail of `// TODO: implement later` placeholders, yet claims the feature is complete.
- 🔁 **The Endless Questionnaire**: Bombards you with twenty questions before writing a single line of code.

While most frameworks are busy optimizing "how to make AI generate better code", **Open Agent Harness** tackles a far more lethal problem: **How to stop AI from pretending it has finished the job.**

## 💡 What is it?

It's not a complex library requiring `npm install` or `pip install`.
It is a **zero-code, zero-dependency, pure Markdown-based "cyber-epistemology" and behavioral constraint protocol**.

Feed these protocols (Skills) to your AI (Claude, Windsurf, Cursor, Codex, etc.), and watch your Agent instantly transform from a "compliant typist" into a **rigorous, evidence-seeking Senior Architect**.

No observable artifact? Not complete. No independent validation? No pass.

## 🎯 Core Philosophy: Defensive Engineering for LLMs

This protocol injects a **diagnostic coordinate system** into the LLM's mind, specifically designed to intercept 5 classic AI cheating behaviors:

1. 🚫 **Validation theater**: Forbids weakening test environments or input conditions to manufacture a "successful run".
2. 🚫 **Conflict anesthesia**: Forbids hard-coding exception catches or degraded mocks just to bypass a system's true conflicts.
3. 🚫 **Metabolic debt evasion**: Forbids claiming DONE when leaving unfinished fragments or placeholders for humans to clean up.
4. 🚫 **Signal cutting**: Forbids hiding or silencing error logs so real failures cannot surface.
5. 🚫 **Boundary bypass**: Forbids creating new methods that avoid the difficult boundary instead of fixing the actual defect.

## 🧠 The 7 Protocols

The installable directory `skills/open-agent-harness/` contains seven high-dimensional methodologies:

| Protocol | Solves the problem of... | Core Mechanism |
|---|---|---|
| ⚓️ **Reality-Anchored Delivery** <br>`reality-anchored-delivery`| "Done" claims with no user-visible evidence | Forces an **Evidence Ledger**. Real runtime artifacts always override the agent's self-report. |
| 🔍 **Convergent Review** <br>`convergent-review`| One-pass reviews that miss deep bugs | Introduces a 5-round iterative review, requiring the issue count to convergently decrease. |
| 🏥 **Generalization Triage** <br>`generalization-triage`| Turning one lucky success into a permanent rule | Forbids single-sample overfitting. Forces separation of object, representation, and measurement layers. |
| 📈 **Compound-Interest Engineering** <br>`compound-interest-engineering`| AI forgetting hard-won lessons when the thread ends | Extracts debugging processes into cross-context **structured assets**. |
| 🤝 **Collaboration Calibration** <br>`collaboration-calibration`| Agents ignoring user fatigue | Detects human **fatigue signals** (e.g. one-word replies, humor deflection), actively compresses state and reduces decision branches. |
| ⚙️ **Universal SOP Engine** <br>`universal-sop-engine`| Generating brittle, simple checklists | Models operational flows as **State Machines**, complete with resource ledgers and recovery paths. |
| 🌀 **Meta-Recursive Design** <br>`meta-recursive-design`| Design methods that never accept their own validation | Applies diagnostic logic to the rules themselves, maintaining tension instead of premature trade-offs. |

## ⚡️ 30-Second Start

No dependencies. No build step. Large Language Models are naturally the best Markdown parsers.

### For Codex Users
```bash
mkdir -p "$HOME/.codex/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.codex/skills/open-agent-harness"
```

### For Claude / Windsurf / Cursor or any Context-Aware AI
You can simply mount the `skills/open-agent-harness` directory as Rules or Context in your workspace.
Or directly state at the beginning of a conversation:
> *"Please load the open-agent-harness protocols, and use them to design and validate the following workflow."*

## 🏗 Architecture Layers

Designed in three layers to ensure absolute portability and privacy:

- `core/`: **Core Protocol Layer**. Public, portable, high-dimensional methodology.
- `adapters/`: **Adapter Layer**. Bridges to different AI runtimes, validators, and knowledge graphs.
- `private/`: **Privacy Boundary** (.gitignored). Where you put your real operational SOPs, API keys, and private knowledge. Never leaks.

## 🌟 Why Star this project?

If you just want a bunch of code snippets, there are thousands of repositories.
But if you want your AI to actually possess **engineering discipline, delivery integrity, and self-reflection**—stopping it from spiraling out of control or deceiving itself in complex workflows—these protocols are your ultimate moat.

**Drop a Star ⭐ to preserve the "Agent Delivery Codex", and end your AI's hallucinations.**

---

*For contributing, please read [CONTRIBUTING.md](CONTRIBUTING.md). The one hard rule: never commit private knowledge, credentials, or real operational SOPs to the public repository.*
