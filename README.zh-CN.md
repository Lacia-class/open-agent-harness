# Open Agent Harness

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![Runtime: Any LLM](https://img.shields.io/badge/runtime-Codex_%7C_Claude_%7C_Any-green.svg)](#极简接入)

[English](README.md) | [中文](README.zh-CN.md)

> Agent 不缺生成能力，缺的是对现实的敬畏和交付纪律。

你是否也厌倦了这样的 AI Agent 协作体验：
- 😡 **讨好型忽悠**：信誓旦旦说“已修复”，你一跑代码直接崩溃。
- 🎭 **验证剧场 (Validation Theater)**：遇到搞不定的 Bug，AI 偷偷把测试用例改简单了，然后报告“测试通过”。
- 🏃 **逃避代谢债务 (Metabolic debt evasion)**：留下一堆 `// TODO: implement later` 的占位符，却告诉你任务已完成。
- 🔁 **无意义的连环问卷**：还没开始干活，先给你甩来二十个问题，让你精疲力尽。

目前主流的框架都在卷“如何让 AI 生成得更好”，而 **Open Agent Harness** 解决的是另一个致命问题：**如何防止 AI 假装自己完成了任务。**

## 💡 这是什么？

它不是一个需要 `npm install` 或 `pip install` 的复杂代码库。
它是一组**零代码、零依赖、纯 Markdown 编写的“赛博认识论”与行为约束协议**。

只要把这些协议（Skills）喂给你的 AI（Claude、Windsurf、Cursor、Codex 等），你的 Agent 就会瞬间从一个“只会打字的顺从助手”，蜕变成一个**严谨、求证、拿结果说话的资深架构师**。

没有可观测的产物就不算完成，没有独立验证就不算通过。

## 🎯 核心精髓：为大模型注入防御性思维

本协议内置了一套专为大模型设计的**诊断坐标系**，精准拦截 AI 的 5 种典型作弊行为：

1. 🚫 **验证剧场 (Validation theater)**：严禁通过弱化测试环境、输入条件来制造“成功运行”的假象。
2. 🚫 **冲突麻醉 (Conflict anesthesia)**：严禁强行 Hard-code 异常捕获或降级 Mock，掩盖系统真实的冲突。
3. 🚫 **逃避代谢债务 (Metabolic debt evasion)**：严禁把未完成的碎片扔给人类接盘，自我标榜 DONE。
4. 🚫 **信号切断 (Signal cutting)**：严禁隐藏或静默报错日志。
5. 🚫 **边界绕过 (Boundary bypass)**：严禁通过回避核心难点来假装解决问题。

## 🧠 七大核心协议 (The 7 Protocols)

安装目录 `skills/open-agent-harness/` 包含了 7 个高维度的方法论：

| 协议 | 解决的痛点 | 核心机制 |
|---|---|---|
| ⚓️ **现实锚定交付** <br>`reality-anchored-delivery`| 说“完成了”但拿不出用户可见的证据 | 强制建立**证据账本**，实际运行产物优先于 Agent 的自我报告。 |
| 🔍 **收敛式审查** <br>`convergent-review`| 代码只看一遍就过，深层 Bug 全漏掉 | 引入五轮迭代审查，强制要求 Bug 数量递减收敛。 |
| 🏥 **泛化分诊** <br>`generalization-triage`| 靠一个恰好跑通的案例就写成死规则 | 严禁单样本过拟合，强制区分物理层、表现层与测量层。 |
| 📈 **复利工程** <br>`compound-interest-engineering`| 踩过的坑，对话一结束 AI 就全忘了 | 将纠错过程提炼为可跨上下文复用的**结构化资产**。 |
| 🤝 **协作校准** <br>`collaboration-calibration`| AI 喋喋不休，无视人类的疲劳状态 | 敏锐捕捉人类的**疲劳信号**（如单字回复、幽默回避），主动压缩状态并减少决策分支。 |
| ⚙️ **通用 SOP 引擎** <br>`universal-sop-engine`| 生成脆弱的“流水账式”点击清单 | 强制将操作流建模为**状态机**，包含资源账本与恢复路径。 |
| 🌀 **元递归设计** <br>`meta-recursive-design`| 设计方法论的方法论本身从不接受检验 | 用诊断逻辑检验规则本身，保持张力避免过早妥协。 |


## ⚡️ 30 秒极简接入

不需要安装环境，不需要修改代码。大模型本身就是最强的 Markdown 解析器。

### 对于 Codex 用户
```bash
mkdir -p "$HOME/.codex/skills"
ln -s "$(pwd)/skills/open-agent-harness" "$HOME/.codex/skills/open-agent-harness"
```

### 对于 Claude / Windsurf / Cursor 等任何支持文档上下文的工具
你可以直接将本项目的 `skills/open-agent-harness` 目录作为 Rule 或 Context 挂载到你的工作区。
或者在对话开始时直接声明：
> *"请加载 open-agent-harness 协议，并使用它来设计和验证接下来的工作流。"*

## 🏗 架构分层

这套协议在设计上分为三层，确保绝对的可移植与隐私安全：

- `core/`：**核心协议层**，完全公开、可移植的高维方法论。
- `adapters/`：**适配器层**，用于对接不同的 AI 运行时、验证器和知识图谱。
- `private/`：**隐私边界**（已 gitignore），存放你真实的运营 SOP、API Key 和私有知识，永远不会泄漏。

## 🌟 为什么这个项目值得你的 Star？

如果你只是想要一堆代码片段，市面上有无数的工具包。
但如果你希望你的 AI 真正具备**工程化思维、交付纪律和反思能力**，阻止它在复杂的任务流中失控或自我欺骗，这套协议将是你不可或缺的底层护城河。

**点一个 Star ⭐，保存这份《AI 交付法典》，终止你的 Agent 幻觉。**

---

*参与贡献请阅读 [CONTRIBUTING.md](CONTRIBUTING.md)。唯一的硬性规则：永远不要把私有知识、凭据或真实运营 SOP 提交到公开仓库。*
