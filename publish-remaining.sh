#!/bin/bash

# 等待发布第三个 skill 的脚本
# ClawHub 限制：每小时最多 5 个新 skills

echo "⏰ 等待 ClawHub 速率限制重置..."
echo ""
echo "已发布的 skills："
echo "1. openclaw-diary-setup (v1.0.1) ✅"
echo "2. openclaw-diary-core (v1.0.0) ✅"
echo "3. openclaw-diary-insights - 待发布 ⏳"
echo ""
echo "需要等待约 1 小时后运行以下命令："
echo ""
echo "cd /Users/suansuan/Desktop/new/openclaw-diary-release"
echo "clawhub publish ./note-extractor --slug openclaw-diary-insights --name \"OpenClaw Diary Insights\" --version \"1.0.0\" --changelog \"自动提取思维卡片、情绪轨迹、成长维度分析和知识图谱\" --tags \"insights,analysis,diary,knowledge-management\""
echo ""
echo "发布完成后，三个 skills 就都可用了！"
