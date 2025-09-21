#!/bin/bash

echo "🚀 Setting up GitHub repository for Railway deployment..."

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Not in a git repository. Initializing..."
    git init
fi

echo "📝 Please follow these steps:"
echo ""
echo "1. Go to https://github.com/new"
echo "2. Create a new repository named 'ai-company-avalanche'"
echo "3. Make it PUBLIC (Railway needs public repos for free tier)"
echo "4. Don't initialize with README, .gitignore, or license"
echo "5. Copy the repository URL (it will look like: https://github.com/YOUR_USERNAME/ai-company-avalanche.git)"
echo ""
echo "6. Then run this command with your repository URL:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/ai-company-avalanche.git"
echo "   git push -u origin main"
echo ""
echo "7. After that, you can deploy to Railway using the repository URL"
echo ""
echo "✅ Your code is ready for deployment!"
