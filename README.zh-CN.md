# Open Agent Harness

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![Runtime: Codex | Claude | Any](https://img.shields.io/badge/runtime-Codex_%7C_Claude_%7C_Any-green.svg)](#agent-runtime-支持)

[English](README.md) | [中文](README.zh-CN.md)

AI agent 很会说“完成了”。但真正完成，往往是另一回事：文件并不存在，测试被改弱了，应用仍然坏着，所谓“结果”也许只是一段关于“本应发生什么”的总结。

Open Agent Harness 是一组可移植协议，用来把 agent 工作变成**证据驱动**的过程。没有可验证产物，就不算完成。它可以作为自包含 skill 接入 Codex、Claude，或任何能够读取 Markdown 的 agent 运行环境。

## 快速开始

```sh
# Codex
mkdir -p "$HOME/.codex/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.codex/skills/open-agent-harness"

# Claude
mkdir -p "$HOME/.claude/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.claude/skills/open-agent-harness"
```

然后告诉你的 agent：

```
Use $open-agent-harness to design and validate this workflow.
```

就这些。这个 skill 自包含，不需要额外依赖，也不需要构建步骤。

## 它解决什么问题

多数 agent 框架优化的是*生成*。这套 harness 优化的是*验证*。

当 agent 宣称任务完成时，这些协议会追问：证据在哪里？是否有可观察的产物？是否经过独立验收？是否有不止一轮的收敛检查？“agent 说它能跑”和“它真的能跑”之间的差距，往往比想象中更大，而真正的生产力损耗就藏在这里。

## 里面有什么

可安装 skill 位于 `skills/open-agent-harness/`，包含七个协议：

| 协议 | 防止什么问题 |
|---|---|
| **Collaboration Calibration** | agent 还没开始做事，就先让用户回答二十个问题 |
| **Reality-Anchored Delivery** | 没有用户可见证据，却已经宣称“完成” |
| **Convergent Review** | 一轮审查就停下，错过第二轮本可发现的问题 |
| **Generalization Triage** | 把一次幸运样本过拟合成长期规则 |
| **Meta-Recursive Design** | 方法论从不拿自己做验证 |
| **Compound-Interest Engineering** | 来之不易的经验，在线程结束后就消失 |
| **Universal SOP Engine** | 只有脆弱点击清单，没有状态模型和恢复路径 |

## 架构

```
core/               可移植协议定义
adapters/           连接 runtime、验证器和领域工具的适配层
skills/             可安装 skill 包
packs/              用于测试的公开示例包
private/            本地私有扩展（已加入 .gitignore）
templates/          项目用 AGENTS.md / CLAUDE.md 起始模板
```

这套设计分为三层：**core protocols**（开放、可移植）、**adapters**（运行时适配层）和 **private packs**（你的凭据、画像、知识图谱，永不提交）。你可以开源方法，而不暴露自己的私有配置。

## Agent Runtime 支持

这套 harness 天然不绑定运行环境。

- **Codex**：安装 skill，并可选使用 `templates/user-level/AGENTS.md`
- **Claude**：安装 skill，并可选使用 `templates/user-level/CLAUDE.md`
- **其他 agent**：只要能读 Markdown，就可以直接使用这些协议

## 发布安全

```sh
bash tools/release-audit.sh
bash skills/open-agent-harness/scripts/release-audit.sh
```

这些脚本会在推送前检查是否意外泄漏了私有内容。

## 贡献

见 [CONTRIBUTING.md](CONTRIBUTING.md) 和 [SECURITY.md](SECURITY.md)。唯一硬规则：不要把私有知识、凭据或真实操作 SOP 放进 public core。

## 许可证

[Apache License 2.0](LICENSE)
