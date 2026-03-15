# OpenClaw Diary - AI 日记助手

> 你的全天候 AI 思考搭子，智能记录想法、生成洞察

OpenClaw Diary 是一套完整的 AI 日记系统，帮助你轻松记录日常想法、自动生成洞察分析。支持本地存储和飞书同步，保护你的隐私。

**包含三个 ClawHub Skills**:
- `openclaw-diary-setup` - 安装向导
- `openclaw-diary-core` - 日记记录
- `openclaw-diary-insights` - 洞察提取

## ✨ 功能特点

### 📝 智能日记记录
- **自动识别**：说"记一下"就能记录，AI 自动识别想法、文章讨论、协作任务
- **双人设模式**：
  - **INTJ 分析型**：话少精准，善于发现规律和模式
  - **ENFP 温暖型**：温暖陪伴，提供情感支持
- **多平台同步**：本地存储 + 飞书云文档同步（可选）

### 🎯 洞察提取
- **思维卡片**：自动提取你的核心洞察和金句
- **情绪轨迹**：追踪每日情绪变化
- **成长维度**：分析你在职业、学习、健康等 6 个维度的关注度
- **知识图谱**：可视化你的思考网络

### 🚀 简单易用
- **5 分钟设置**：引导式安装，无需技术背景
- **纯文本交互**：在 Telegram、WhatsApp、Discord 等任何平台使用
- **本地优先**：所有数据保存在你的设备上

## 📦 安装

### 前置要求
- 已安装 [OpenClaw](https://openclaw.ai)
- macOS、Linux 或 Windows（WSL）

### 一句话安装（推荐）

在 OpenClaw 中说：
```
Help me install openclaw-diary-setup from ClawHub
```

**就这一句！** setup skill 会自动安装其他依赖的 skills。

或者使用命令行：
```bash
npm install -g clawhub
clawhub install openclaw-diary-setup
```

### 手动安装

```bash
# 1. 克隆仓库
git clone https://github.com/smorzandos/openclaw-diary.git

# 2. 复制到 OpenClaw skills 目录
mkdir -p ~/.openclaw/skills
cp -r openclaw-diary/openclaw-diary-setup ~/.openclaw/skills/
cp -r openclaw-diary/openclaw-diary-core ~/.openclaw/skills/
cp -r openclaw-diary/openclaw-diary-insights ~/.openclaw/skills/

# 3. 重启 OpenClaw
# OpenClaw 会自动识别新的 skills
```

## 🎬 快速开始

### 1️⃣ 初始化设置

在 OpenClaw（Telegram/WhatsApp/Discord）中发送：
```
setup my journal
```

AI 会引导你完成：
- 选择 AI 人设（INTJ 或 ENFP）
- 配置存储位置（本地或飞书）
- 设置用户档案（可选）

### 2️⃣ 开始记录

随时记录你的想法：
```
记一下今天学到的东西
```

或者直接分享想法，AI 会主动询问是否记录：
```
今天和团队讨论了新项目方案
```

### 3️⃣ 生成洞察

当你积累了一段时间的日记后：
```
分析日记
```

AI 会生成精美的可视化页面，展示你的思考花园。

## 📖 使用示例

### 记录日常想法
```
用户: 记一下今天的反思
AI: 好的，说说看？
用户: 发现做事情要先想清楚目标，不然容易走偏
AI: ✓ 已记录到日记
```

### 陪读文章
```
用户: [分享文章链接]
AI: 这篇文章讲什么的？你有什么想法？
用户: 讲 AI Agent 的发展，我觉得未来会很普及
AI: ✓ 已记录你的观点
```

### 生成月度洞察
```
用户: 分析本月日记
AI: 正在分析...
    ✓ 提取了 12 张思维卡片
    ✓ 覆盖 23 天的记录
    ✓ 生成可视化页面

    文件位置：~/write_me/02notes/insights/insights-2026-03.html
```

## 🔧 配置说明

### 配置文件位置
```
~/.openclaw/workspace/diary/config/diary-config.json
```

### 切换 AI 人设

编辑配置文件：
```json
{
  "personality": {
    "type": "intj",  // 或 "enfp"
    "file": "personalities/intj.md"
  }
}
```

### 启用飞书同步

1. 在飞书开放平台创建应用：https://open.feishu.cn/
2. 获取 App ID 和 App Secret
3. 设置环境变量：
```bash
export FEISHU_APP_ID="your_app_id"
export FEISHU_APP_SECRET="your_app_secret"
```

4. 更新配置文件：
```json
{
  "storage": {
    "feishu": {
      "enabled": true,
      "folder_token": "可选：指定文件夹"
    }
  }
}
```

## 🔒 隐私与安全

### 数据存储
- **本地优先**：所有日记默认保存在你的设备上（`~/write_me/00inbox/journal/`）
- **可选同步**：飞书同步需要你主动配置，数据通过你的飞书账号存储
- **不上传**：我们不会收集或上传你的任何数据

### 授权信息
- **环境变量**：敏感信息（如 API Key）通过环境变量存储，不会写入配置文件
- **本地配置**：所有配置文件保存在你的设备上
- **你的控制**：你可以随时删除数据或停止使用

### 开源透明
- **MIT 许可证**：完全开源，代码可审查
- **社区驱动**：欢迎贡献和反馈
- **无追踪**：不包含任何追踪或分析代码

## 📂 文件结构

安装后，你的文件会保存在：

```
~/write_me/
├── 00inbox/
│   └── journal/          # 日记文件
│       ├── 2026-01.md
│       ├── 2026-02.md
│       └── 2026-03.md
├── 01studio/
│   └── me/               # 用户档案（可选）
│       └── identity.md
└── 02notes/
    └── insights/         # 洞察分析
        ├── insights-2026-03.html
        └── data-2026-03.json
```

## 🆘 常见问题

### Q: 如何切换人设？
A: 编辑 `~/.openclaw/workspace/diary/config/diary-config.json`，修改 `personality.type` 为 `intj` 或 `enfp`。

### Q: 日记保存在哪里？
A: 默认保存在 `~/write_me/00inbox/journal/`，按月份分文件（如 `2026-03.md`）。

### Q: 如何备份日记？
A: 直接复制 `~/write_me/00inbox/journal/` 目录即可。如果启用了飞书同步，飞书云文档也是一份备份。

### Q: 支持哪些平台？
A: 支持所有 OpenClaw 支持的平台：Telegram、WhatsApp、Discord、Slack、网页版等。

### Q: 如何删除数据？
A: 删除 `~/write_me/` 目录和 `~/.openclaw/workspace/diary/` 目录即可。

### Q: 飞书同步安全吗？
A: 飞书同步使用你自己的飞书应用，数据存储在你的飞书账号中，我们无法访问。

## 🤝 贡献

欢迎贡献代码、报告问题或提出建议！

- **GitHub Issues**: [提交问题](https://github.com/openclaw-community/openclaw-diary/issues)
- **Pull Requests**: 欢迎提交改进
- **讨论**: 在 OpenClaw 社区分享你的使用体验

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

## 🙏 致谢

感谢以下贡献者：
- **Yitong** - diary 和 onboarding skills
- **DK** - 用户身份导入功能
- **Vivi** - note-extractor skill

感谢 OpenClaw 社区的支持和反馈！

---

**开始使用**：在 OpenClaw 中说 `setup my journal` 🚀

**需要帮助**？查看 [常见问题](#-常见问题) 或 [提交 Issue](https://github.com/openclaw-community/openclaw-diary/issues)
