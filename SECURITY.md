# 安全与隐私政策

> 最后更新：2026-03-15

OpenClaw Diary 致力于保护你的隐私和数据安全。本文档说明我们如何处理你的数据。

## 🔒 核心原则

### 1. 本地优先
- **所有数据默认保存在你的设备上**
- 不会自动上传到任何云服务
- 你完全控制自己的数据

### 2. 可选同步
- 飞书同步需要你主动配置
- 使用你自己的飞书应用和账号
- 我们无法访问你的飞书数据

### 3. 零追踪
- 不包含任何追踪代码
- 不收集使用统计
- 不发送匿名数据

## 📊 数据存储

### 本地存储

**日记文件**
- 位置：`~/write_me/00inbox/journal/`
- 格式：Markdown 文本文件
- 权限：仅你的用户账户可访问

**配置文件**
- 位置：`~/.openclaw/workspace/diary/config/`
- 内容：人设选择、存储配置
- 不包含敏感信息（如密码、API Key）

**用户档案**（可选）
- 位置：`~/write_me/01studio/me/`
- 内容：你主动提供的个人信息
- 可随时删除

**洞察分析**
- 位置：`~/write_me/02notes/insights/`
- 内容：从日记提取的结构化数据
- 完全本地生成和存储

### 云端同步（可选）

**飞书同步**
- 需要你创建飞书应用
- 使用你的 App ID 和 App Secret
- 数据存储在你的飞书账号中
- 我们无法访问你的飞书数据

**未来支持**
- Notion 同步（开发中）
- Flomo 同步（开发中）
- 同样遵循"你的账号，你的数据"原则

## 🔐 敏感信息处理

### 环境变量
敏感信息（如 API Key）通过环境变量存储：

```bash
# 飞书同步
export FEISHU_APP_ID="your_app_id"
export FEISHU_APP_SECRET="your_app_secret"
```

**为什么使用环境变量？**
- 不会写入配置文件
- 不会被 git 追踪
- 不会意外泄露

### 配置文件
配置文件（`diary-config.json`）只包含：
- 人设选择
- 存储路径
- 功能开关

**不包含**：
- 密码
- API Key
- 个人身份信息

## 🛡️ 安全建议

### 1. 保护环境变量
```bash
# 添加到 ~/.zshrc 或 ~/.bashrc
export FEISHU_APP_ID="your_app_id"
export FEISHU_APP_SECRET="your_app_secret"

# 确保文件权限正确
chmod 600 ~/.zshrc
```

### 2. 定期备份
```bash
# 备份日记
cp -r ~/write_me/00inbox/journal ~/Backups/journal-$(date +%Y%m%d)

# 备份配置
cp -r ~/.openclaw/workspace/diary ~/Backups/diary-config-$(date +%Y%m%d)
```

### 3. 审查权限
```bash
# 检查文件权限
ls -la ~/write_me/00inbox/journal/
ls -la ~/.openclaw/workspace/diary/

# 确保只有你可以访问
chmod 700 ~/write_me/00inbox/journal/
```

### 4. 飞书应用安全
- 使用企业自建应用（不是第三方应用）
- 定期更换 App Secret
- 限制应用权限范围
- 不要分享 App ID 和 Secret

## 🚫 我们不会做的事

### 不收集数据
- ❌ 不收集你的日记内容
- ❌ 不收集使用统计
- ❌ 不收集设备信息
- ❌ 不收集位置信息

### 不上传数据
- ❌ 不会自动上传到我们的服务器
- ❌ 不会发送到第三方服务
- ❌ 不会用于训练 AI 模型

### 不追踪用户
- ❌ 不使用 Google Analytics
- ❌ 不使用其他追踪工具
- ❌ 不记录用户行为

## 🔍 开源透明

### 代码审查
- **完全开源**：所有代码在 GitHub 上公开
- **MIT 许可证**：你可以自由审查、修改、分发
- **社区审查**：欢迎安全研究人员审查代码

### 依赖项
OpenClaw Diary 依赖：
- OpenClaw 框架
- 飞书 MCP Server（如果启用飞书同步）
- 标准系统工具（bash、mkdir、cp 等）

所有依赖都是开源或官方工具。

## 📝 数据删除

### 完全删除
```bash
# 删除所有日记数据
rm -rf ~/write_me/00inbox/journal/

# 删除配置
rm -rf ~/.openclaw/workspace/diary/

# 删除用户档案
rm -rf ~/write_me/01studio/me/

# 删除洞察分析
rm -rf ~/write_me/02notes/insights/

# 删除 skills
rm -rf ~/.openclaw/skills/diary
rm -rf ~/.openclaw/skills/onboarding
rm -rf ~/.openclaw/skills/note-extractor
```

### 飞书数据
如果启用了飞书同步：
1. 在飞书云文档中删除日记文档
2. 在飞书开放平台删除应用
3. 删除环境变量

## 🆘 安全问题报告

如果你发现安全漏洞，请：

1. **不要公开披露**
2. 发送邮件到：security@openclaw-community.org（如果有）
3. 或在 GitHub 创建私密 Security Advisory

我们会在 48 小时内回复，并尽快修复问题。

## 📜 隐私政策变更

如果我们更新隐私政策：
- 会在 GitHub 上发布更新
- 会在 README 中说明变更
- 会保留历史版本供查阅

## 🤝 你的权利

作为用户，你有权：
- ✅ 随时查看你的数据
- ✅ 随时导出你的数据
- ✅ 随时删除你的数据
- ✅ 选择是否使用云同步
- ✅ 审查和修改源代码

## 📞 联系我们

如有隐私或安全相关问题：
- GitHub Issues: https://github.com/openclaw-community/openclaw-diary/issues
- 标签：`security` 或 `privacy`

---

**记住**：你的数据，你的控制。我们只是提供工具，数据永远属于你。
