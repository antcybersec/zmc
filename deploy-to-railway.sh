#!/bin/bash

echo "🚀 Complete Deployment Script: GitHub → Railway"
echo "=============================================="
echo ""

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Not in a git repository. Please run this from the project root."
    exit 1
fi

echo "📋 Current git status:"
git status --short
echo ""

echo "🔍 Checking for uncommitted changes..."
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 Found uncommitted changes. Committing them..."
    git add .
    git commit -m "Prepare for Railway deployment - $(date)"
    echo "✅ Changes committed"
else
    echo "✅ No uncommitted changes"
fi

echo ""
echo "🌐 GitHub Setup Instructions:"
echo "============================="
echo ""
echo "1. Go to https://github.com/new"
echo "2. Repository name: ai-company-avalanche"
echo "3. Description: AI-powered business idea generation and development platform"
echo "4. Make it PUBLIC (required for Railway free tier)"
echo "5. Don't initialize with README, .gitignore, or license"
echo "6. Click 'Create repository'"
echo ""
echo "7. Copy the repository URL (looks like: https://github.com/YOUR_USERNAME/ai-company-avalanche.git)"
echo ""
echo "8. Run these commands with your repository URL:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/ai-company-avalanche.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "9. Then go to https://railway.app and deploy from your GitHub repository!"
echo ""
echo "🎯 Your code is ready for deployment!"
echo ""
echo "📊 Repository info:"
echo "   - Commits: $(git rev-list --count HEAD)"
echo "   - Last commit: $(git log -1 --pretty=format:'%h - %s (%cr)')"
echo "   - Branch: $(git branch --show-current)"
