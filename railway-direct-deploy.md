# 🚀 Railway Direct Deployment (No GitHub Required!)

## Method 1: Railway CLI (Easiest)

### Step 1: Install Railway CLI
```bash
# Install Railway CLI
npm install -g @railway/cli

# Login to Railway
railway login
```

### Step 2: Deploy Backend API
```bash
# Navigate to project root
cd /Users/anantkumar/Documents/devanshucodes/avalanche-team1

# Initialize Railway project
railway init

# Set environment variables
railway variables set NODE_ENV=production
railway variables set PORT=5000
railway variables set CLAUDE_API_KEY=YOUR_ANTHROPIC_API_KEY_HERE
railway variables set CLAUDE_MODEL=claude-3-haiku-20240307
railway variables set DATABASE_URL=./database/ai_company.db

# Deploy
railway up
```

### Step 3: Deploy Frontend
```bash
# Navigate to client directory
cd client

# Initialize new Railway project
railway init

# Set environment variables
railway variables set REACT_APP_API_URL=https://your-backend-url.railway.app
railway variables set REACT_APP_BOLT_URL=https://your-bolt-url.railway.app

# Deploy
railway up
```

### Step 4: Deploy Bolt.diy
```bash
# Navigate to bolt.diy directory
cd ../bolt.diy-main

# Initialize new Railway project
railway init

# Set environment variables
railway variables set ANTHROPIC_API_KEY=YOUR_ANTHROPIC_API_KEY_HERE
railway variables set VITE_PUBLIC_APP_URL=https://your-bolt-url.railway.app

# Deploy
railway up
```

## Method 2: Railway Web Interface

### Step 1: Go to Railway
1. Visit https://railway.app
2. Sign up/Login with GitHub
3. Click "New Project"

### Step 2: Deploy Backend
1. Click "Deploy from GitHub repo"
2. **OR** Click "Deploy from template" → "Empty Project"
3. Upload your `avalanche-team1` folder
4. Set environment variables in Railway dashboard
5. Deploy!

### Step 3: Deploy Frontend
1. Create new service in same project
2. Upload `avalanche-team1/client` folder
3. Set environment variables
4. Deploy!

### Step 4: Deploy Bolt.diy
1. Create new service in same project
2. Upload `avalanche-team1/bolt.diy-main` folder
3. Set environment variables
4. Deploy!

## Environment Variables Summary

### Backend Service:
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

### Frontend Service:
```
REACT_APP_API_URL=https://your-backend-url.railway.app
REACT_APP_BOLT_URL=https://your-bolt-url.railway.app
```

### Bolt.diy Service:
```
ANTHROPIC_API_KEY=YOUR_ANTHROPIC_API_KEY_HERE
VITE_PUBLIC_APP_URL=https://your-bolt-url.railway.app
```

## Result
You'll get 3 URLs:
- Backend API: `https://your-backend.railway.app`
- Frontend: `https://your-frontend.railway.app`
- Bolt.diy: `https://your-bolt.railway.app`
