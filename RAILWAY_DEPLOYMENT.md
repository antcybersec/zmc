# 🚀 Railway Deployment Guide

Complete step-by-step guide to deploy your AI Company platform to Railway.

## 📋 Prerequisites

- GitHub account
- Railway account (free tier available)
- Your API keys ready

## 🌐 Step 1: Create GitHub Repository

1. **Go to GitHub**
   - Visit https://github.com/new
   - Sign in to your GitHub account

2. **Create New Repository**
   - Repository name: `ai-company-avalanche`
   - Description: `AI-powered business idea generation and development platform with multi-agent system`
   - Make it **PUBLIC** (required for Railway free tier)
   - ❌ Don't initialize with README, .gitignore, or license
   - Click "Create repository"

3. **Push Your Code**
   ```bash
   # In your project directory
   git remote add origin https://github.com/YOUR_USERNAME/ai-company-avalanche.git
   git branch -M main
   git push -u origin main
   ```

## 🚂 Step 2: Deploy to Railway

1. **Go to Railway**
   - Visit https://railway.app
   - Sign up/Login with GitHub
   - Click "New Project"

2. **Deploy from GitHub**
   - Click "Deploy from GitHub repo"
   - Select your `ai-company-avalanche` repository
   - Railway will automatically detect the `railway.json` configuration

3. **Configure Services**
   Railway will create 3 services based on your configuration:
   - **backend-api**: Node.js API server
   - **frontend**: React frontend
   - **bolt-diy**: Bolt.diy development environment

## ⚙️ Step 3: Set Environment Variables

### Backend API Service
Go to your backend service in Railway dashboard and add:

```
NODE_ENV=production
PORT=5000
CLAUDE_API_KEY=YOUR_ANTHROPIC_API_KEY_HERE
CLAUDE_MODEL=claude-3-haiku-20240307
DATABASE_URL=./database/ai_company.db
PRIVATE_KEY=your_private_key_here
RPC_URL=https://api.avax.network/ext/bc/C/rpc
CONTRACT_ADDRESS=your_contract_address_here
```

### Frontend Service
Add these environment variables:

```
NODE_ENV=production
PORT=3000
REACT_APP_API_URL=https://your-backend-url.railway.app
REACT_APP_BOLT_URL=https://your-bolt-url.railway.app
```

### Bolt.diy Service
Add these environment variables:

```
NODE_ENV=production
PORT=5174
ANTHROPIC_API_KEY=YOUR_ANTHROPIC_API_KEY_HERE
VITE_PUBLIC_APP_URL=https://your-bolt-url.railway.app
```

## 🔗 Step 4: Update Service URLs

After all services are deployed:

1. **Get Service URLs**
   - Each service will get a Railway URL
   - Copy the URLs from Railway dashboard

2. **Update Frontend Environment**
   - Update `REACT_APP_API_URL` with your backend URL
   - Update `REACT_APP_BOLT_URL` with your Bolt.diy URL

3. **Update Bolt.diy Environment**
   - Update `VITE_PUBLIC_APP_URL` with your Bolt.diy URL

4. **Redeploy Services**
   - Railway will automatically redeploy when you update environment variables

## 🎯 Step 5: Test Your Deployment

1. **Test Backend API**
   ```bash
   curl https://your-backend-url.railway.app/api/agents/generate-ideas
   ```

2. **Test Frontend**
   - Visit your frontend URL
   - Try generating a business idea

3. **Test Bolt.diy**
   - Visit your Bolt.diy URL
   - Try creating a website

## 📊 Expected URLs

After deployment, you'll have:
- **Backend API**: `https://backend-api-production-xxxx.up.railway.app`
- **Frontend**: `https://frontend-production-xxxx.up.railway.app`
- **Bolt.diy**: `https://bolt-diy-production-xxxx.up.railway.app`

## 🔧 Troubleshooting

### Common Issues

1. **Build Failures**
   - Check that all dependencies are in package.json
   - Ensure build commands are correct

2. **Environment Variables**
   - Make sure all required variables are set
   - Check for typos in variable names

3. **Service Communication**
   - Verify URLs are correct
   - Check that services are running

4. **API Keys**
   - Ensure API keys are valid
   - Check rate limits

### Debug Commands

```bash
# Check service logs in Railway dashboard
# Check build logs for errors
# Verify environment variables are set
```

## 🎉 Success!

Once deployed, your AI Company platform will be live with:
- ✅ Multi-agent business idea generation
- ✅ Market research and analysis
- ✅ Product development workflows
- ✅ Marketing strategy creation
- ✅ Technical architecture planning
- ✅ Website development with Bolt.diy
- ✅ Revenue management system

## 📈 Next Steps

- Monitor usage in Railway dashboard
- Set up custom domains (optional)
- Configure monitoring and alerts
- Scale services as needed

---

**Your AI Company is now live on Railway! 🚀**
