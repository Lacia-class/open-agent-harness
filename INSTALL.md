# Installation

Open Agent Harness can be used in several ways.

## 1. Read As Protocol Docs

Use the files in `core/` directly. This is enough for humans or agents that can read local Markdown.

## 2. Install As A Codex Skill

Copy or symlink `skills/open-agent-harness/` into your Codex skills directory.

The skill package is self-contained: `SKILL.md`, `agents/openai.yaml`, `references/`, and `scripts/`.

Example:

```bash
mkdir -p "$HOME/.codex/skills"
cp -R skills/open-agent-harness "$HOME/.codex/skills/open-agent-harness"
```

If you keep this repository cloned locally, a symlink is easier to update:

```bash
mkdir -p "$HOME/.codex/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.codex/skills/open-agent-harness"
```

Optional user-level routing template:

```bash
cp templates/user-level/AGENTS.md "$HOME/.codex/AGENTS.md"
```

Do not overwrite an existing user-level `AGENTS.md` without reviewing and merging it manually.

## 3. Install As A Claude Skill

Copy or symlink `skills/open-agent-harness/` into your Claude skills directory.

Example:

```bash
mkdir -p "$HOME/.claude/skills"
cp -R skills/open-agent-harness "$HOME/.claude/skills/open-agent-harness"
```

If you keep this repository cloned locally:

```bash
mkdir -p "$HOME/.claude/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.claude/skills/open-agent-harness"
```

Optional user-level routing template:

```bash
cp templates/user-level/CLAUDE.md "$HOME/.claude/CLAUDE.md"
```

Do not overwrite an existing user-level `CLAUDE.md` without reviewing and merging it manually.

## Private Extensions

Put private packs outside the public repository, or under `private/` locally. The public `.gitignore` prevents accidental commits from `private/`.
