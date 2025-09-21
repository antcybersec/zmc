#!/bin/bash

echo "🚀 GitHub Repository Setup for AI Company"
echo "=========================================="
echo ""

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Not in a git repository. Initializing..."
    git init
    git add .
    git commit -m "Initial commit: AI Company with multi-agent system"
fi

echo "📝 Follow these steps to create your GitHub repository:"
echo ""
echo "1. 🌐 Go to https://github.com/new"
echo "2. 📝 Repository name: ai-company-avalanche"
echo "3. 📖 Description: AI-powered business idea generation and development platform with multi-agent system"
echo "4. 🌍 Make it PUBLIC (Railway needs public repos for free tier)"
echo "5. ❌ Don't initialize with README, .gitignore, or license"
echo "6. ✅ Click 'Create repository'"
echo ""
echo "7. 📋 Copy the repository URL (it will look like: https://github.com/YOUR_USERNAME/ai-company-avalanche.git)"
echo ""
echo "8. 🔗 Then run these commands with your repository URL:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/ai-company-avalanche.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "9. 🚀 After that, we'll deploy to Railway using your GitHub repository!"
echo ""
echo "✅ Your code is ready for GitHub!"
echo ""
echo "📊 Current repository status:"
git log --oneline -5
