# 安装指南

> 5 分钟快速开始使用 OpenClaw Diary

## 📋 前置要求

在开始之前，请确保：

1. ✅ 已安装 [OpenClaw](https://openclaw.ai)
2. ✅ OpenClaw 已连接到消息平台（Telegram/WhatsApp/Discord 等）
3. ✅ 你的系统是 macOS、Linux 或 Windows（WSL）

## 🚀 安装方式

### 方式 1：通过 ClawHub（推荐）

最简单的方式！在 OpenClaw 中说：

```
Help me install openclaw-diary
```

OpenClaw 会自动下载并安装所有 3 个 skills。

### 方式 2：手动安装

如果 ClawHub 安装失败，可以手动安装：

#### 步骤 1：下载代码

```bash
# 克隆仓库
git clone https://github.com/openclaw-community/openclaw-diary.git
cd openclaw-diary
```

或者下载 ZIP 文件：
- 访问 https://github.com/openclaw-community/openclaw-diary
- 点击 "Code" → "Download ZIP"
- 解压到任意目录

#### 步骤 2：复制 Skills

```bash
# 创建 skills 目录（如果不存在）
mkdir -p ~/.openclaw/skills

# 复制 3 个 skills
cp -r diary ~/.openclaw/skills/
cp -r onboarding ~/.openclaw/skills/
cp -r note-extractor ~/.openclaw/skills/

# 验证安装
ls ~/.openclaw/skills/
# 应该看到：diary  note-extractor  onboarding
```

#### 步骤 3：重启 OpenClaw

```bash
# 如果 OpenClaw 正在运行，重启它
# 方法取决于你的运行方式

# 如果使用 systemd
sudo systemctl restart openclaw

# 如果使用 Docker
docker restart openclaw

# 如果直接运行
# 按 Ctrl+C 停止，然后重新运行启动命令
```

#### 步骤 4：验证安装

在 OpenClaw 中说：
```
setup my journal
```

如果看到安装向导，说明安装成功！

## 🎬 初始化设置

安装完成后，需要初始化日记系统：

### 1. 启动设置向导

在 OpenClaw 中发送：
```
setup my journal
```

### 2. 选择 AI 人设

AI 会问你：
```
【阶段 1/5】选择 AI 人设

1. INTJ - 分析型（推荐）
   话少、精准、善于发现规律

2. ENFP - 温暖型
   话多、温暖、陪伴感强

回复数字或名称即可。
```

回复 `1` 或 `2`。

### 3. 用户身份建立（可选）

AI 会问你是否建立用户档案：
```
【阶段 2/5】用户身份建立（可选）

1. 聊天建立 - 我问几个问题了解你
2. 导入建立 - 从文档导入你的信息
3. 跳过 - 直接进入下一步
```

- 选择 `1`：AI 会问你 3 个简单问题
- 选择 `2`：从飞书/Notion 等导入（需要配置）
- 选择 `3`：跳过，以后可以补充

### 4. 存储配置

AI 会问你日记保存在哪里：
```
【阶段 3/5】存储配置

1. 仅本地 - 保存到 ~/write_me/00inbox/journal/
2. 本地 + 飞书同步
3. 本地 + Notion 同步
4. 本地 + Flomo 同步
```

**推荐选择 `1`（仅本地）**，最简单安全。

如果选择飞书同步，需要：
1. 在飞书开放平台创建应用
2. 获取 App ID 和 App Secret
3. 设置环境变量（AI 会告诉你怎么做）

### 5. 完成设置

AI 会显示：
```
✓ 设置完成

配置文件：~/.openclaw/workspace/diary/config/diary-config.json
日记目录：~/write_me/00inbox/journal/

现在可以开始记录日记了。

在对话中说：记一下
```

## ✅ 验证安装

### 测试日记记录

在 OpenClaw 中说：
```
记一下今天安装了 OpenClaw Diary
```

AI 应该会回复：
```
✓ 日记已更新：~/write_me/00inbox/journal/2026-03.md
```

### 检查文件

```bash
# 查看日记文件
cat ~/write_me/00inbox/journal/2026-03.md

# 应该看到类似内容：
# # 日记 2026-03
#
# ## 14:30 [主动记录] - 安装 OpenClaw Diary
# ...
```

## 🔧 可选配置

### 启用飞书同步

如果初始化时选择了仅本地，后续想启用飞书同步：

#### 1. 创建飞书应用

1. 访问 https://open.feishu.cn/
2. 创建企业自建应用
3. 在「凭证与基础信息」中获取：
   - App ID
   - App Secret

#### 2. 设置环境变量

```bash
# 编辑 shell 配置文件
nano ~/.zshrc  # 如果使用 zsh
# 或
nano ~/.bashrc # 如果使用 bash

# 添加以下内容
export FEISHU_APP_ID="cli_xxxxx"
export FEISHU_APP_SECRET="xxxxx"

# 保存并重新加载
source ~/.zshrc  # 或 source ~/.bashrc
```

#### 3. 更新配置文件

```bash
# 编辑配置文件
nano ~/.openclaw/workspace/diary/config/diary-config.json

# 修改 storage.feishu 部分：
{
  "storage": {
    "feishu": {
      "enabled": true,
      "folder_token": ""  // 可选
    }
  }
}
```

#### 4. 重启 OpenClaw

重启后，日记会自动同步到飞书。

## 🆘 常见问题

### Q: 安装后没有反应？

**检查 skills 是否正确安装：**
```bash
ls ~/.openclaw/skills/
# 应该看到：diary  note-extractor  onboarding
```

**检查 SKILL.md 文件是否存在：**
```bash
ls ~/.openclaw/skills/diary/SKILL.md
ls ~/.openclaw/skills/onboarding/SKILL.md
ls ~/.openclaw/skills/note-extractor/SKILL.md
```

**重启 OpenClaw：**
```bash
# 完全停止 OpenClaw
pkill -f openclaw

# 重新启动
# 使用你原来的启动命令
```

### Q: 提示"配置文件不存在"？

说明还没有运行初始化。在 OpenClaw 中说：
```
setup my journal
```

### Q: 飞书同步失败？

**检查环境变量：**
```bash
echo $FEISHU_APP_ID
echo $FEISHU_APP_SECRET
# 应该显示你的 App ID 和 Secret
```

**检查飞书 MCP Server：**
```bash
# 确保已安装飞书 MCP Server
# 具体安装方法参考 OpenClaw 文档
```

### Q: 如何卸载？

```bash
# 删除 skills
rm -rf ~/.openclaw/skills/diary
rm -rf ~/.openclaw/skills/onboarding
rm -rf ~/.openclaw/skills/note-extractor

# 删除数据（可选）
rm -rf ~/write_me/00inbox/journal/
rm -rf ~/.openclaw/workspace/diary/
```

## 📞 获取帮助

如果遇到问题：

1. **查看文档**：阅读 [README.md](README.md) 和 [SECURITY.md](SECURITY.md)
2. **搜索 Issues**：https://github.com/openclaw-community/openclaw-diary/issues
3. **提交 Issue**：描述你的问题和错误信息
4. **社区讨论**：在 OpenClaw 社区寻求帮助

---

**下一步**：[开始使用](README.md#-快速开始) 🚀
