# 🚀 OpenClaw Diary - 一句话安装

## 最简安装方式

### 在 OpenClaw 中说：

```
Help me install smorzandos-diary-onboarding from ClawHub
```

**就这一句！** onboarding skill 会自动安装其他两个依赖的 skills。

---

## 或者使用命令行：

```bash
npm install -g clawhub
clawhub install smorzandos-diary-onboarding
```

onboarding 会在首次运行时自动安装：
- `smorzandos-diary`（日记记录）
- `smorzandos-diary-insights`（洞察提取）

---

## 开始使用

安装完成后，在 OpenClaw 中说：

```
setup my journal
```

按引导完成 2-3 分钟的设置，然后就可以开始记录了：

```
记一下今天的想法
```

---

## 工作原理

1. **你只需安装**：`smorzandos-diary-onboarding`
2. **onboarding 会自动**：
   - 检查是否安装了 `smorzandos-diary` 和 `smorzandos-diary-insights`
   - 如果没有，自动安装它们
   - 引导你完成配置
3. **配置完成后**：三个 skills 协同工作
   - onboarding：初始化设置
   - diary：日记记录
   - insights：洞察提取

---

## 三个 Skills 的关系

```
smorzandos-diary-onboarding (入口)
    ↓ 自动安装
    ├── smorzandos-diary (日记记录)
    └── smorzandos-diary-insights (洞察提取)
```

**用户体验**：
- ✅ 只需安装一个 skill
- ✅ 自动处理依赖
- ✅ 引导式配置
- ✅ 开箱即用

---

## 完整文档

- **GitHub**: https://github.com/smorzandos/openclaw-diary
- **使用指南**: https://github.com/smorzandos/openclaw-diary/blob/main/HOW_TO_USE.md
- **安装指南**: https://github.com/smorzandos/openclaw-diary/blob/main/INSTALL.md

---

**一句话安装，三分钟配置，终身使用！** 🚀
