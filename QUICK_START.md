# 🚀 快速开始指南

> OpenClaw Diary 已成功发布！

## 📦 GitHub 仓库

**仓库地址**: https://github.com/smorzandos/openclaw-diary

**Release**: https://github.com/smorzandos/openclaw-diary/releases/tag/v1.0.0

---

## 🎯 如何在新的 OpenClaw 中测试

### 方式 1：直接从 GitHub 安装（推荐）

```bash
# 1. 克隆仓库到临时目录
cd /tmp
git clone https://github.com/smorzandos/openclaw-diary.git

# 2. 复制 skills 到 OpenClaw 目录
mkdir -p ~/.openclaw/skills
cp -r openclaw-diary/diary ~/.openclaw/skills/
cp -r openclaw-diary/onboarding ~/.openclaw/skills/
cp -r openclaw-diary/note-extractor ~/.openclaw/skills/

# 3. 验证安装
ls -la ~/.openclaw/skills/
```

### 方式 2：让 Claude 帮你安装

在 OpenClaw 中说：

```
Help me install openclaw-diary from https://github.com/smorzandos/openclaw-diary
```

Claude 会自动完成安装。

---

## 🧪 测试步骤

### 1. 初始化设置

在 OpenClaw 中说：

```
setup my journal
```

或者：

```
帮我设置日记系统
```

按照引导完成：
- 选择人设（INTJ 分析型 / ENFP 温暖型）
- 配置存储方式（本地 / 飞书）
- 导入用户身份（可选）

### 2. 测试日记记录

```
记一下今天的想法：我发现 OpenClaw 的 skill 系统设计得很优雅
```

或者：

```
记录一下：刚才和团队讨论了新功能的架构设计
```

### 3. 测试洞察提取

```
帮我提取最近的思维卡片
```

或者：

```
分析一下我最近的情绪轨迹
```

---

## ✅ 验证清单

测试时检查以下功能：

### onboarding skill
- [ ] 能够触发安装向导（说 "setup my journal"）
- [ ] 人设选择界面正常
- [ ] 存储配置正常
- [ ] 用户身份导入正常（如果测试）

### diary skill
- [ ] 能够识别记录请求（说 "记一下"）
- [ ] 双人设模式切换正常
- [ ] 本地存储正常（检查 `~/write_me/` 目录）
- [ ] 飞书同步正常（如果配置了）

### note-extractor skill
- [ ] 能够提取思维卡片
- [ ] 能够分析情绪轨迹
- [ ] 能够生成成长维度分析
- [ ] 能够生成知识图谱

---

## 🐛 常见问题

### Q: 找不到 skills？

A: 检查安装路径：

```bash
ls -la ~/.openclaw/skills/diary
ls -la ~/.openclaw/skills/onboarding
ls -la ~/.openclaw/skills/note-extractor
```

### Q: onboarding 没有触发？

A: 尝试更明确的触发词：

```
setup my journal system
```

或者：

```
initialize openclaw diary
```

### Q: 飞书同步不工作？

A: 需要配置环境变量和 MCP server：

```bash
# 检查环境变量
echo $FEISHU_APP_ID
echo $FEISHU_APP_SECRET

# 检查 MCP server 配置
cat ~/.openclaw/mcp_servers.json
```

### Q: 找不到日记文件？

A: 检查默认存储位置：

```bash
ls -la ~/write_me/
```

---

## 📊 测试报告模板

测试完成后，可以记录：

```markdown
## OpenClaw Diary 测试报告

**测试时间**: 2026-03-15
**OpenClaw 版本**: [填写版本]
**测试环境**: [macOS/Linux/Windows]

### 安装测试
- [ ] 安装成功
- [ ] Skills 正确加载
- 问题：[如有]

### onboarding 测试
- [ ] 触发正常
- [ ] 人设选择正常
- [ ] 配置保存正常
- 问题：[如有]

### diary 测试
- [ ] 记录功能正常
- [ ] 人设切换正常
- [ ] 存储正常
- 问题：[如有]

### note-extractor 测试
- [ ] 提取功能正常
- [ ] 分析准确
- 问题：[如有]

### 总体评价
[填写使用体验]
```

---

## 🆘 需要帮助？

- **文档**: https://github.com/smorzandos/openclaw-diary
- **Issues**: https://github.com/smorzandos/openclaw-diary/issues
- **安装指南**: https://github.com/smorzandos/openclaw-diary/blob/main/INSTALL.md

---

## 🎉 测试愉快！

如果发现任何问题，欢迎在 GitHub Issues 中反馈。
