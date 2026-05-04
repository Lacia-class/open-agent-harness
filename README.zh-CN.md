# Open Agent Harness

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache--2.0-blue.svg)](LICENSE)
[![Skill validated](https://img.shields.io/badge/skill-validated-brightgreen.svg)](skills/open-agent-harness/SKILL.md)
[![Runtime neutral](https://img.shields.io/badge/runtime-Codex%20%7C%20Claude%20%7C%20Agents-black.svg)](#agent-runtime-支持)

[English](README.md) | [中文](README.zh-CN.md)

**别再让 agent 把现实没有验收过的任务说成 done。**

Open Agent Harness 是一套可移植的 AI agent 方法论协议包。它让 Codex、Claude 和其他能读 Markdown 的 agent 拥有同一套工作操作系统：现实锚定交付、收敛审查、反过拟合规则更新、可复用 SOP 设计。

如果你见过 agent 说“完成了”，但应用其实坏着、文件没生成、测试被改弱、用户最终根本看不到结果，那你应该在下一个严肃 agent 任务前安装它。

## 为什么值得 Star

如果你想要这样的 agent，请点 Star：

- 用可观察 artifact 证明完成，而不是靠语气自信
- 区分真实输出、日志摘要和自我汇报
- 审查到问题数量和证据缺口真正收敛
- 不把一次幸运样本写成永久规则
- 把 SOP 建成状态机，而不是脆弱点击清单
- 把私有知识图谱、用户画像、凭据、真实操作流程隔离在公开 core 之外
- 同时支持 Codex、Claude 和其他 agent runtime

这不是一包 prompt。它是一套让 agent 更难“假装完成”的小型 harness。

## 30 秒安装

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

如果你更想复制而不是软链接：

```bash
cp -R skills/open-agent-harness "$HOME/.codex/skills/open-agent-harness"
cp -R skills/open-agent-harness "$HOME/.claude/skills/open-agent-harness"
```

然后这样调用：

```text
Use $open-agent-harness to design and validate this workflow.
```

## 你会得到什么

可安装 skill 位于 `skills/open-agent-harness/`，并且是自包含的：

```text
skills/open-agent-harness/
  SKILL.md
  agents/openai.yaml
  references/
  scripts/release-audit.sh
```

它包含这些协议：

| 协议 | 防止什么问题 |
|---|---|
| Collaboration Calibration | 一上来就把用户压进巨大问卷 |
| Reality-Anchored Delivery | 没有用户可见证据就宣称 done |
| Convergent Review | 一轮审查后质量还没稳定就停 |
| Generalization Triage | 从 benchmark 或单个样本过拟合出长期规则 |
| Meta-Recursive Design | 设计方法论却从不用它审查自己 |
| Compound-Interest Engineering | 有价值经验在一个会话结束后消失 |
| Universal SOP Engine | 没有状态模型和恢复路径的脆弱点击清单 |

## 核心原则

```text
没有可观察 artifact，就没有完成。
没有独立验收，就没有 PASS。
没有 adapter 边界，就不能进公开 core。
```

Open Agent Harness 分三层：

1. **Core protocols**：不依赖私有上下文也能运行的通用方法。
2. **Adapters**：连接 runtime、验证器、知识源、术语表、领域 SOP 资源的可选适配层。
3. **Private packs**：用户画像、凭据、私有知识图谱、真实操作流程等本地私有扩展。

这意味着你可以开源方法论，而不用暴露支撑你私人工作的那套机器。

## Agent Runtime 支持

这套 harness 不绑定具体 runtime。

- Codex 安装 `skills/open-agent-harness/`，也可以使用 `templates/user-level/AGENTS.md`。
- Claude 安装 `skills/open-agent-harness/`，也可以使用 `templates/user-level/CLAUDE.md`。
- 其他 agent 可以直接读取 Markdown 协议。

运行时特定编排属于 `adapters/agent-runtime-adapter.md`，不能写进公开 core。

## 仓库结构

```text
core/                       维护者使用的协议源文件
adapters/                   维护者使用的 adapter 接口源文件
skills/open-agent-harness/  可安装的自包含 skill 包
packs/public-example-pack/  用于测试 harness 的安全示例
private/                    本地私有扩展区；除 README 外被 git 忽略
templates/                  安全的用户级 AGENTS.md / CLAUDE.md 模板
docs/                       架构和发布边界文档
tools/                      发布和泄漏审计工具
```

## 发布安全

发布前运行：

```bash
bash tools/release-audit.sh
python3 /path/to/quick_validate.py skills/open-agent-harness
```

skill 自带审计：

```bash
bash skills/open-agent-harness/scripts/release-audit.sh
```

## 这个仓库刻意不包含什么

- 私人用户画像或个人 `AGENTS.md` / `CLAUDE.md`
- API key、token、session 数据、账号、支付流程或服务资源清单
- 专有课程笔记、私有知识图谱或私有 MCP 数据
- 涉及真实账号、支付、验证流程的网站级浏览器 SOP

如果一个工作流只有依赖私有知识图谱、账号资源账本或个人画像才能运行，它就应该属于 adapter 或 private pack，而不是公开内核。

## 从私有 Harness 迁移

如果你正在从个人或内部 harness 抽取公开版本，先看 `docs/migration-from-private-harness.md`。

简版原则：

- 保留机制
- 移除私有常量
- 将领域知识移动到 adapter
- 将个人校准移动到 profile pack
- 公开安全示例，而不公开真实操作路径

## 贡献与安全

提交修改前请阅读 `CONTRIBUTING.md` 和 `SECURITY.md`。公开贡献必须将私有知识源、个人画像、凭据和真实操作 SOP 排除在 core 之外。

## 许可证

Apache License 2.0，见 `LICENSE`。

