# Open Agent Harness

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![Runtime: Codex | Claude | Any](https://img.shields.io/badge/runtime-Codex_%7C_Claude_%7C_Any-green.svg)](#支持的-agent-运行时)

[English](README.md) | [中文](README.zh-CN.md)

用过 AI agent 的人大概都有过这种体验：agent 信誓旦旦地说"已完成"，你一看——文件没生成、测试被偷偷降级、页面打不开，或者它只是写了一段关于"我做了什么"的漂亮总结。

Agent 不缺生成能力，缺的是交付纪律。

Open Agent Harness 是一组可移植的协议，给 agent 的工作流加上举证机制：没有可观测的产物就不算完成，没有独立验证就不算通过。它以 skill 的形式装进 Codex、Claude 或任何能读 Markdown 的 agent 运行时，不侵入、不依赖、即装即用。

## 30 秒上手

```sh
# Codex
mkdir -p "$HOME/.codex/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.codex/skills/open-agent-harness"

# Claude
mkdir -p "$HOME/.claude/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.claude/skills/open-agent-harness"
```

装完之后跟 agent 说一句：

```
Use $open-agent-harness to design and validate this workflow.
```

没有依赖，没有构建步骤，两行命令搞定。

## 它解决什么问题

大部分 agent 框架都在优化生成质量。这个项目优化的是**验收质量**。

当 agent 宣称任务完成时，这套协议会追问：证据在哪？一个可观测的产物、一次独立的验证、一轮收敛到稳定的 review——而不是 agent 自己写的"任务总结"。"agent 说它行"和"它真的行"之间的差距，远比你想象的大。

## 包含的协议

安装目录 `skills/open-agent-harness/` 里有七个协议：

| 协议 | 防止什么 |
|---|---|
| **协作校准** | Agent 上来先甩你一堆问题，还没干活先做了二十道问卷 |
| **现实锚定交付** | 说"完成了"但拿不出用户可见的证据 |
| **收敛式审查** | 只过一遍就收工，第二遍能抓到的问题全漏掉 |
| **泛化分诊** | 靠一个恰好跑通的案例就写成永久规则 |
| **元递归设计** | 设计方法论的方法论本身从不接受检验 |
| **复利工程** | 踩过的坑、攒下的经验，对话一结束就全丢了 |
| **通用 SOP 引擎** | 没有状态模型和异常恢复的脆弱操作清单 |

## 架构

```
core/               可移植的协议定义
adapters/            运行时、验证器、领域工具的桥接层
skills/              可安装的 skill 包（日常使用这个）
packs/               公开的示例包，用于测试
private/             本地扩展区（已 gitignore）
templates/           项目级 AGENTS.md / CLAUDE.md 模板
```

设计上分三层：**核心协议**是公开可移植的方法；**适配器**做运行时对接；**私有包**放你自己的凭据、知识图谱和真实工作流，永远不会进仓库。方法开源，私有配置留在本地。

## 支持的 Agent 运行时

Harness 不绑定特定运行时。

- **Codex** — 安装 skill，可选配合 `templates/user-level/AGENTS.md`
- **Claude** — 安装 skill，可选配合 `templates/user-level/CLAUDE.md`
- **其他** — 能读 Markdown 就能用

## 发布前检查

```sh
bash tools/release-audit.sh
bash skills/open-agent-harness/scripts/release-audit.sh
```

这两个脚本会在你推送前检查是否意外泄露了私有内容。

## 参与贡献

见 [CONTRIBUTING.md](CONTRIBUTING.md) 和 [SECURITY.md](SECURITY.md)。唯一的硬性规则：不要把私有知识、凭据或真实运营 SOP 提交到公开仓库。

## 许可证

[Apache License 2.0](LICENSE)
