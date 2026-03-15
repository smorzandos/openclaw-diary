# Release v1.0.0 - 首次发布 🎉

> 发布日期：2026-03-15

OpenClaw Diary 首次正式发布！一套完整的 AI 日记系统，帮助你轻松记录想法、自动生成洞察。

## ✨ 主要功能

### 📝 智能日记记录
- **自动识别**：说"记一下"就能记录
- **双人设模式**：INTJ 分析型 / ENFP 温暖型
- **多平台同步**：本地存储 + 飞书云文档（可选）

### 🎯 洞察提取
- **思维卡片**：自动提取核心洞察和金句
- **情绪轨迹**：追踪每日情绪变化
- **成长维度**：分析 6 个维度的关注度
- **知识图谱**：可视化思考网络

### 🚀 简单易用
- **5 分钟设置**：引导式安装，无需技术背景
- **纯文本交互**：支持 Telegram、WhatsApp、Discord 等
- **本地优先**：数据保存在你的设备上

## 📦 包含的 Skills

1. **onboarding** - 安装向导
   - 引导完成初始化设置
   - 人设选择、存储配置
   - 用户身份建立（可选）

2. **diary** - 日记记录
   - 智能记录想法、文章讨论、协作任务
   - 双人设模式（INTJ/ENFP）
   - 本地存储 + 飞书同步

3. **note-extractor** - 洞察提取
   - 提取思维卡片、情绪轨迹
   - 生成成长维度分析
   - 可视化知识图谱

## 🚀 快速开始

### 安装

**方式 1：通过 ClawHub（推荐）**
```
Help me install openclaw-diary
```

**方式 2：手动安装**
```bash
git clone https://github.com/openclaw-community/openclaw-diary.git
cd openclaw-diary
cp -r diary onboarding note-extractor ~/.openclaw/skills/
```

详细安装步骤：[INSTALL.md](INSTALL.md)

### 初始化

在 OpenClaw 中说：
```
setup my journal
```

按照引导完成设置（约 2-3 分钟）。

### 开始使用

```
记一下今天的想法
```

更多使用示例：[README.md](README.md#-使用示例)

## 📚 文档

- [README.md](README.md) - 完整使用指南
- [INSTALL.md](INSTALL.md) - 详细安装步骤
- [SECURITY.md](SECURITY.md) - 隐私与安全说明

## 🔒 隐私与安全

- ✅ **本地优先**：所有数据默认保存在你的设备上
- ✅ **可选同步**：飞书同步需要主动配置
- ✅ **零追踪**：不收集任何使用数据
- ✅ **开源透明**：MIT 许可证，代码可审查

详见：[SECURITY.md](SECURITY.md)

## 🐛 已知限制

### 未实现的功能
- Notion 同步（配置中有选项，但未实现）
- Flomo 同步（配置中有选项，但未实现）

### 依赖要求
- 飞书同步需要配置环境变量和 MCP server
- 依赖特定的目录结构（`~/write_me/`）

## 🤝 贡献者

感谢以下贡献者：
- **Yitong** - diary 和 onboarding skills
- **DK** - 用户身份导入功能
- **Vivi** - note-extractor skill

## 📝 更新日志

### v1.0.0 (2026-03-15)

**新功能**
- ✨ 完整的日记记录系统
- ✨ 双人设模式（INTJ/ENFP）
- ✨ 飞书云文档同步
- ✨ 洞察提取和可视化
- ✨ 引导式安装向导

**技术改进**
- 🔧 完全适配 OpenClaw 生态
- 🔧 纯文本交互，支持所有消息平台
- 🔧 使用 `metadata.clawdbot` 格式
- 🔧 完整的错误处理

**文档**
- 📖 用户友好的 README
- 📖 详细的安装指南
- 📖 隐私与安全说明

## 🆘 获取帮助

- **文档**：查看 [README.md](README.md) 和 [INSTALL.md](INSTALL.md)
- **Issues**：https://github.com/openclaw-community/openclaw-diary/issues
- **讨论**：在 OpenClaw 社区分享使用体验

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE)

---

**开始使用**：在 OpenClaw 中说 `setup my journal` 🚀

**需要帮助**？查看 [安装指南](INSTALL.md) 或 [提交 Issue](https://github.com/openclaw-community/openclaw-diary/issues)
