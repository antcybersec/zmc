# 🚀 Render Deployment Guide

## Deploy to Render (Free Tier Available)

### Step 1: Backend API Deployment
1. **Go to [Render.com](https://render.com)**
2. **Sign up/Login**
3. **Click "New +" → "Web Service"**
4. **Connect your GitHub repository**
5. **Configure:**
   - **Name**: `ai-company-backend`
   - **Root Directory**: `avalanche-team1`
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
   - **Environment**: `Node`

### Step 2: Frontend Deployment
1. **Create another Web Service**
2. **Configure:**
   - **Name**: `ai-company-frontend`
   - **Root Directory**: `avalanche-team1/client`
   - **Build Command**: `npm install && npm run build`
   - **Start Command**: `npx serve -s build`
   - **Environment**: `Node`

### Step 3: Bolt.diy Deployment
1. **Create another Web Service**
2. **Configure:**
   - **Name**: `ai-company-bolt`
   - **Root Directory**: `avalanche-team1/bolt.diy-main`
   - **Build Command**: `pnpm install && pnpm run build`
   - **Start Command**: `pnpm run start`
   - **Environment**: `Node`

### Environment Variables for Each Service

#### Backend Service:
```
NODE_ENV=production
PORT=10000
CLAUDE_API_KEY=YOUR_ANTHROPIC_API_KEY_HERE
CLAUDE_MODEL=claude-3-haiku-20240307
DATABASE_URL=./database/ai_company.db
PRIVATE_KEY=your_private_key_here
RPC_URL=https://api.avax.network/ext/bc/C/rpc
CONTRACT_ADDRESS=your_contract_address_here
```

#### Frontend Service:
```
REACT_APP_API_URL=https://your-backend-url.onrender.com
REACT_APP_BOLT_URL=https://your-bolt-url.onrender.com
```

#### Bolt.diy Service:
```
ANTHROPIC_API_KEY=YOUR_ANTHROPIC_API_KEY_HERE
VITE_PUBLIC_APP_URL=https://your-bolt-url.onrender.com
```

## Result
You'll get 3 URLs:
- Backend API: `https://your-backend.onrender.com`
- Frontend: `https://your-frontend.onrender.com`
- Bolt.diy: `https://your-bolt.onrender.com`
