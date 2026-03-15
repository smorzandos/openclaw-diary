# 🎉 OpenClaw Diary 使用指南

> 已成功发布到 GitHub 和 ClawHub！

---

## 📦 发布信息

### GitHub 仓库
- **地址**: https://github.com/smorzandos/openclaw-diary
- **Release**: https://github.com/smorzandos/openclaw-diary/releases/tag/v1.0.0

### ClawHub Skills
1. **smorzandos-diary** - 日记记录系统
   - ID: `k970bx673qfadaq9dmq368deyd82ztss`
   - 版本: v1.0.0

2. **smorzandos-diary-onboarding** - 安装向导
   - ID: `k973aaxnkadpd06vtv7wp41ysh82zz3y`
   - 版本: v1.0.0

3. **smorzandos-diary-insights** - 洞察提取
   - ID: `k978xkrbeypqmtw5fwmcem9fqh82y1zb`
   - 版本: v1.0.0

---

## 🚀 快速安装（推荐）

### 方式 1：通过 ClawHub CLI

```bash
# 安装 ClawHub CLI（如果还没安装）
npm install -g clawhub

# 安装三个 skills
clawhub install smorzandos-diary-onboarding
clawhub install smorzandos-diary
clawhub install smorzandos-diary-insights
```

### 方式 2：在 OpenClaw 中直接安装

在 OpenClaw 对话中说：

```
Help me install these skills from ClawHub:
- smorzandos-diary-onboarding
- smorzandos-diary
- smorzandos-diary-insights
```

### 方式 3：从 GitHub 手动安装

```bash
# 克隆仓库
cd /tmp
git clone https://github.com/smorzandos/openclaw-diary.git

# 复制到 OpenClaw skills 目录
mkdir -p ~/.openclaw/skills
cp -r openclaw-diary/onboarding ~/.openclaw/skills/
cp -r openclaw-diary/diary ~/.openclaw/skills/
cp -r openclaw-diary/note-extractor ~/.openclaw/skills/
```

---

## 🎯 使用流程

### 第一步：初始化设置

安装完成后，在 OpenClaw 中说：

```
setup my journal
```

或者：

```
帮我设置日记系统
```

系统会引导你完成：

1. **选择人设**
   - INTJ 分析型：理性、深度思考、结构化
   - ENFP 温暖型：感性、鼓励、温暖陪伴

2. **配置存储方式**
   - 本地存储（默认）：保存在 `~/write_me/` 目录
   - 飞书同步（可选）：需要配置环境变量

3. **导入用户身份**（可选）
   - 从 Digital Life 导入个人信息
   - 帮助 AI 更好地理解你

### 第二步：开始记录

初始化完成后，就可以开始使用了：

#### 记录想法

```
记一下今天的想法：我发现 OpenClaw 的 skill 系统设计得很优雅
```

#### 记录文章讨论

```
记录一下：刚才读了一篇关于 AI Agent 的文章，链接是 https://...
```

#### 记录协作任务

```
记一下：今天和团队讨论了新功能的架构设计，决定采用微服务架构
```

### 第三步：提取洞察

积累一段时间的日记后，可以提取洞察：

#### 思维卡片

```
帮我提取最近的思维卡片
```

#### 情绪轨迹

```
分析一下我最近的情绪变化
```

#### 成长维度

```
看看我最近在哪些维度上有成长
```

#### 知识图谱

```
生成我的思考网络图谱
```

---

## 💡 使用技巧

### 1. 自然对话即可

不需要特定格式，随便说就行：

```
今天发生了一件有趣的事
刚才想到一个点子
我在思考一个问题
```

系统会自动识别并询问是否需要记录。

### 2. 人设切换

如果想换个人设：

```
切换到 ENFP 模式
```

或者：

```
用 INTJ 模式记录
```

### 3. 查看历史

```
看看我最近记录了什么
```

或者：

```
搜索关于"架构设计"的日记
```

### 4. 定期回顾

建议每周或每月提取一次洞察：

```
帮我做一个本周的思考总结
```

---

## 📂 数据存储

### 本地存储

所有日记默认保存在：

```
~/write_me/
├── diary/           # 日记文件
├── insights/        # 洞察提取结果
└── config/          # 配置文件
```

### 飞书同步（可选）

如果配置了飞书同步，数据会同步到：

- 飞书云文档
- 飞书多维表格

需要配置环境变量：

```bash
export FEISHU_APP_ID="your_app_id"
export FEISHU_APP_SECRET="your_app_secret"
```

---

## 🔒 隐私与安全

### 数据控制

- ✅ **本地优先**：所有数据默认保存在你的设备上
- ✅ **可选同步**：飞书同步需要主动配置
- ✅ **零追踪**：不收集任何使用数据
- ✅ **开源透明**：代码可审查

### 敏感信息

系统会自动：
- 检测并提示敏感信息（密码、API key 等）
- 询问是否需要脱敏处理
- 提供加密存储选项

详见：[SECURITY.md](https://github.com/smorzandos/openclaw-diary/blob/main/SECURITY.md)

---

## 🆘 常见问题

### Q: 安装后找不到 skills？

A: 检查安装路径：

```bash
ls -la ~/.openclaw/skills/
```

应该看到三个目录：
- `onboarding/`
- `diary/`
- `note-extractor/`

### Q: onboarding 没有触发？

A: 尝试更明确的触发词：

```
setup my journal system
```

或者：

```
initialize openclaw diary
```

### Q: 如何更新 skills？

A: 使用 ClawHub CLI：

```bash
clawhub update smorzandos-diary-onboarding
clawhub update smorzandos-diary
clawhub update smorzandos-diary-insights
```

或者一次性更新所有：

```bash
clawhub update --all
```

### Q: 飞书同步不工作？

A: 检查配置：

1. 环境变量是否设置：
   ```bash
   echo $FEISHU_APP_ID
   echo $FEISHU_APP_SECRET
   ```

2. MCP server 是否配置：
   ```bash
   cat ~/.openclaw/mcp_servers.json
   ```

3. 查看详细安装指南：[INSTALL.md](https://github.com/smorzandos/openclaw-diary/blob/main/INSTALL.md)

### Q: 如何备份数据？

A: 直接复制数据目录：

```bash
# 备份
cp -r ~/write_me ~/write_me_backup_$(date +%Y%m%d)

# 恢复
cp -r ~/write_me_backup_20260315 ~/write_me
```

### Q: 如何卸载？

A: 删除 skills 和数据：

```bash
# 卸载 skills
clawhub uninstall smorzandos-diary-onboarding
clawhub uninstall smorzandos-diary
clawhub uninstall smorzandos-diary-insights

# 删除数据（可选）
rm -rf ~/write_me
```

---

## 📊 功能对比

| 功能 | 本地存储 | 飞书同步 | Notion | Flomo |
|------|---------|---------|--------|-------|
| 日记记录 | ✅ | ✅ | 🚧 | 🚧 |
| 洞察提取 | ✅ | ✅ | 🚧 | 🚧 |
| 多设备同步 | ❌ | ✅ | 🚧 | 🚧 |
| 离线使用 | ✅ | ✅ | ❌ | ❌ |
| 数据导出 | ✅ | ✅ | 🚧 | 🚧 |

说明：
- ✅ 已支持
- 🚧 计划中
- ❌ 不支持

---

## 🎨 使用示例

### 示例 1：记录技术想法

**用户**：
```
记一下：今天研究了 OpenClaw 的 skill 系统，发现它的设计很像 VSCode 的插件机制。
核心思想是通过 SKILL.md 定义触发条件和行为，然后由 OpenClaw 引擎负责调度。
这种设计的好处是：
1. 低耦合，每个 skill 独立
2. 易扩展，社区可以贡献
3. 可组合，多个 skills 可以协作
```

**系统**：
```
已记录到日记 ✅

标题：OpenClaw Skill 系统设计思考
时间：2026-03-15 14:30
标签：#技术 #架构 #OpenClaw

[记录内容...]

💡 洞察：你发现了 OpenClaw 设计的核心理念 - 模块化和可组合性
```

### 示例 2：记录生活感悟

**用户**：
```
今天散步的时候突然想明白了一件事：
很多时候我们追求的不是结果，而是过程中的成长。
就像写代码，重要的不是最终的产品，而是解决问题的思考过程。
```

**系统**（ENFP 模式）：
```
这个感悟好棒！✨ 已经帮你记下来了。

你说得对，成长往往藏在过程里。就像你现在做的这个日记系统，
不仅是在做一个工具，更是在思考如何更好地记录和理解自己。

要不要给这条想法加个标签？比如 #人生感悟 #成长
```

### 示例 3：提取洞察

**用户**：
```
帮我提取最近一周的思维卡片
```

**系统**：
```
📊 最近一周的思维卡片（2026-03-08 ~ 2026-03-15）

🎯 核心洞察（3条）

1. **OpenClaw Skill 系统设计**
   - 时间：2026-03-15
   - 关键词：模块化、可组合性、低耦合
   - 洞察：发现了 OpenClaw 设计的核心理念
   - 相关：#技术 #架构

2. **成长在过程中**
   - 时间：2026-03-15
   - 关键词：成长、过程、思考
   - 洞察：重要的不是结果，而是过程中的成长
   - 相关：#人生感悟

3. **AI Agent 的未来**
   - 时间：2026-03-12
   - 关键词：AI、自动化、协作
   - 洞察：AI Agent 将成为个人生产力的核心
   - 相关：#AI #未来

📈 情绪轨迹
- 整体：积极向上 ↗️
- 高峰：2026-03-15（完成项目发布）
- 低谷：2026-03-10（遇到技术难题）

🌱 成长维度
1. 技术能力：⭐⭐⭐⭐⭐ (关注度最高)
2. 思考深度：⭐⭐⭐⭐
3. 生活感悟：⭐⭐⭐
4. 人际关系：⭐⭐
5. 健康管理：⭐
6. 财务规划：⭐

💡 建议：最近在技术上投入很多，也有不错的思考。
建议适当关注一下健康和人际关系，保持平衡。
```

---

## 🔗 相关链接

- **GitHub 仓库**: https://github.com/smorzandos/openclaw-diary
- **安装指南**: https://github.com/smorzandos/openclaw-diary/blob/main/INSTALL.md
- **安全说明**: https://github.com/smorzandos/openclaw-diary/blob/main/SECURITY.md
- **发布说明**: https://github.com/smorzandos/openclaw-diary/releases/tag/v1.0.0
- **ClawHub 主页**: https://clawhub.ai/

---

## 🤝 反馈与贡献

### 报告问题

在 GitHub Issues 中提交：
https://github.com/smorzandos/openclaw-diary/issues

### 功能建议

在 GitHub Discussions 中讨论：
https://github.com/smorzandos/openclaw-diary/discussions

### 贡献代码

欢迎提交 Pull Request！

---

## 📄 许可证

MIT License - 详见 [LICENSE](https://github.com/smorzandos/openclaw-diary/blob/main/LICENSE)

---

**开始使用**：在 OpenClaw 中说 `setup my journal` 🚀

**需要帮助**？查看 [完整文档](https://github.com/smorzandos/openclaw-diary) 或 [提交 Issue](https://github.com/smorzandos/openclaw-diary/issues)
