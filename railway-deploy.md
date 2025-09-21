# 🚀 Railway Deployment (No Docker Required)

## Quick Deploy to Railway

### Step 1: Prepare for Railway
1. **Push your code to GitHub** (if not already done)
2. **Go to [Railway.app](https://railway.app)**
3. **Sign up/Login with GitHub**

### Step 2: Deploy Backend API
1. **Click "New Project"**
2. **Select "Deploy from GitHub repo"**
3. **Choose your repository**
4. **Select the root directory** (`avalanche-team1`)
5. **Railway will auto-detect it's a Node.js app**

### Step 3: Configure Environment Variables
In Railway dashboard, add these environment variables:

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

### Step 4: Deploy Frontend
1. **Create another service in Railway**
2. **Select your repo again**
3. **Set root directory to** `avalanche-team1/client`
4. **Add environment variables:**
   ```
   REACT_APP_API_URL=https://your-backend-url.railway.app
   REACT_APP_BOLT_URL=https://your-bolt-url.railway.app
   ```

### Step 5: Deploy Bolt.diy
1. **Create third service in Railway**
2. **Set root directory to** `avalanche-team1/bolt.diy-main`
3. **Add environment variables:**
   ```
   ANTHROPIC_API_KEY=YOUR_ANTHROPIC_API_KEY_HERE
   VITE_PUBLIC_APP_URL=https://your-bolt-url.railway.app
   ```

## Result
You'll get 3 URLs:
- Backend API: `https://your-backend.railway.app`
- Frontend: `https://your-frontend.railway.app`
- Bolt.diy: `https://your-bolt.railway.app`
