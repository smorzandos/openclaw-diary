# 📦 命名规范

## 项目结构

### GitHub 仓库
- **名称**: `openclaw-diary`
- **URL**: https://github.com/smorzandos/openclaw-diary
- **说明**: 项目总仓库，包含三个 skills 的完整代码

### ClawHub Skills

#### 1. openclaw-diary-setup
- **功能**: 安装向导
- **目录**: `onboarding/`
- **安装**: `clawhub install openclaw-diary-setup`
- **说明**: 用户安装的入口 skill，自动安装其他依赖

#### 2. openclaw-diary-core
- **功能**: 日记记录系统
- **目录**: `diary/`
- **安装**: 由 setup 自动安装
- **说明**: 核心日记记录功能，支持 INTJ/ENFP 双人设

#### 3. openclaw-diary-insights
- **功能**: 洞察提取
- **目录**: `note-extractor/`
- **安装**: 由 setup 自动安装
- **说明**: 提取思维卡片、情绪轨迹、知识图谱

---

## 命名逻辑

### 为什么这样命名？

1. **GitHub 仓库**: `openclaw-diary`
   - 简洁的项目总名
   - 便于记忆和分享
   - 符合 GitHub 命名习惯

2. **ClawHub Skills**: `openclaw-diary-*`
   - 统一前缀 `openclaw-diary`
   - 后缀说明功能：`setup`, `core`, `insights`
   - 便于在 ClawHub 中搜索和识别

### 目录名 vs Skill 名

| 目录名 | Skill 名 | 原因 |
|--------|----------|------|
| `onboarding/` | `openclaw-diary-setup` | setup 更直观 |
| `diary/` | `openclaw-diary-core` | core 表示核心功能 |
| `note-extractor/` | `openclaw-diary-insights` | insights 更易理解 |

---

## 用户视角

### 安装时
用户只需要知道：
```
clawhub install openclaw-diary-setup
```

### 使用时
用户不需要关心 skill 名称，只需要：
```
setup my journal
记一下今天的想法
帮我提取洞察
```

### 查找时
在 ClawHub 搜索 `openclaw-diary` 可以找到所有相关 skills。

---

## 开发者视角

### 仓库结构
```
openclaw-diary/                    # GitHub 仓库
├── onboarding/                    # → openclaw-diary-setup
├── diary/                         # → openclaw-diary-core
├── note-extractor/                # → openclaw-diary-insights
├── README.md
└── ...
```

### 发布流程
```bash
# 从 GitHub 仓库发布到 ClawHub
cd openclaw-diary
clawhub publish ./onboarding --slug openclaw-diary-setup
clawhub publish ./diary --slug openclaw-diary-core
clawhub publish ./note-extractor --slug openclaw-diary-insights
```

---

## 统一性检查

### ✅ 已统一
- [x] GitHub 仓库名: `openclaw-diary`
- [x] ClawHub skill 前缀: `openclaw-diary-*`
- [x] 文档中的引用
- [x] 安装命令

### 📝 命名映射
| 概念 | GitHub | ClawHub | 目录 |
|------|--------|---------|------|
| 项目 | openclaw-diary | - | - |
| 安装向导 | - | openclaw-diary-setup | onboarding/ |
| 日记记录 | - | openclaw-diary-core | diary/ |
| 洞察提取 | - | openclaw-diary-insights | note-extractor/ |

---

## 总结

**命名原则**:
1. GitHub 仓库用简洁的项目名
2. ClawHub skills 用统一前缀 + 功能后缀
3. 目录名保持原有习惯（可以不同于 skill 名）
4. 用户文档中统一使用 ClawHub skill 名

**好处**:
- ✅ 便于搜索和识别
- ✅ 层次清晰
- ✅ 易于维护
- ✅ 用户友好
