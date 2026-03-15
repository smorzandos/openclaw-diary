#!/bin/bash

# OpenClaw Diary 发布脚本
# 用于发布到 GitHub 和 ClawHub

set -e

echo "🚀 OpenClaw Diary 发布脚本"
echo "================================"
echo ""

# 检查是否在正确的目录
if [ ! -f "README.md" ] || [ ! -d "diary" ]; then
    echo "❌ 错误：请在 openclaw-diary-release 目录中运行此脚本"
    exit 1
fi

# 检查 git 状态
if [ ! -d ".git" ]; then
    echo "❌ 错误：未初始化 git 仓库"
    echo "请先运行：git init"
    exit 1
fi

# 获取版本号
VERSION=${1:-"v1.0.0"}
echo "📦 版本号：$VERSION"
echo ""

# 确认发布
read -p "确认发布 $VERSION 吗？(y/n) " -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ 取消发布"
    exit 1
fi

echo ""
echo "📝 步骤 1/5：提交更改"
echo "--------------------------------"
git add .
git commit -m "Release $VERSION" || echo "没有新的更改"

echo ""
echo "🏷️  步骤 2/5：创建 Git Tag"
echo "--------------------------------"
git tag -a "$VERSION" -m "Release $VERSION"
echo "✓ 已创建 tag: $VERSION"

echo ""
echo "📤 步骤 3/5：推送到 GitHub"
echo "--------------------------------"
echo "请先设置远程仓库："
echo "  git remote add origin https://github.com/YOUR_USERNAME/openclaw-diary.git"
echo ""
read -p "已设置远程仓库？(y/n) " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    git push origin main
    git push origin "$VERSION"
    echo "✓ 已推送到 GitHub"
else
    echo "⚠️  跳过推送，请手动执行："
    echo "  git push origin main"
    echo "  git push origin $VERSION"
fi

echo ""
echo "📋 步骤 4/5：创建 GitHub Release"
echo "--------------------------------"
echo "请访问 GitHub 创建 Release："
echo "  1. 访问：https://github.com/YOUR_USERNAME/openclaw-diary/releases/new"
echo "  2. 选择 tag: $VERSION"
echo "  3. 标题：Release $VERSION"
echo "  4. 描述：复制 RELEASE_NOTES.md 的内容"
echo "  5. 点击 'Publish release'"
echo ""
read -p "按回车继续..."

echo ""
echo "🌐 步骤 5/5：发布到 ClawHub"
echo "--------------------------------"
echo "如果 OpenClaw CLI 支持，运行以下命令："
echo ""
echo "  # 验证 skills"
echo "  openclaw skill validate ./diary"
echo "  openclaw skill validate ./onboarding"
echo "  openclaw skill validate ./note-extractor"
echo ""
echo "  # 登录 ClawHub"
echo "  openclaw auth login"
echo ""
echo "  # 发布 skills"
echo "  openclaw skill publish ./diary"
echo "  openclaw skill publish ./onboarding"
echo "  openclaw skill publish ./note-extractor"
echo ""
read -p "按回车继续..."

echo ""
echo "✅ 发布完成！"
echo "================================"
echo ""
echo "📝 后续步骤："
echo "  1. 在 GitHub 上创建 Release"
echo "  2. 发布到 ClawHub（如果支持）"
echo "  3. 在社区分享"
echo "  4. 收集用户反馈"
echo ""
echo "🎉 感谢使用 OpenClaw Diary！"
