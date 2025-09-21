# 🚀 AI Company Deployment Guide

## Quick Deploy Options

### Option 1: Railway (Recommended - Easiest)
1. **Sign up at [Railway.app](https://railway.app)**
2. **Connect your GitHub repository**
3. **Set environment variables in Railway dashboard:**
   ```
   CLAUDE_API_KEY=your_claude_api_key_here
   CLAUDE_MODEL=claude-3-haiku-20240307
   PRIVATE_KEY=your_private_key_here
   RPC_URL=https://api.avax.network/ext/bc/C/rpc
   CONTRACT_ADDRESS=your_contract_address_here
   ```
4. **Deploy!** Railway will automatically build and deploy

### Option 2: Render (Free Tier Available)
1. **Sign up at [Render.com](https://render.com)**
2. **Create a new Web Service**
3. **Connect your GitHub repository**
4. **Set environment variables**
5. **Deploy!**

### Option 3: DigitalOcean App Platform
1. **Sign up at [DigitalOcean](https://digitalocean.com)**
2. **Create a new App**
3. **Connect your GitHub repository**
4. **Configure environment variables**
5. **Deploy!**

## Local Testing

### Test with Docker Compose
```bash
# Start all services
docker-compose up -d

# Check logs
docker-compose logs -f

# Stop services
docker-compose down
```

### Test with deployment script
```bash
./deploy.sh
```

## Environment Variables Required

### Required for Production
- `CLAUDE_API_KEY` - Your Anthropic Claude API key
- `PRIVATE_KEY` - Your Ethereum private key for Web3
- `RPC_URL` - Avalanche RPC endpoint
- `CONTRACT_ADDRESS` - Your smart contract address

### Optional
- `CLAUDE_MODEL` - Claude model to use (default: claude-3-haiku-20240307)
- `DATABASE_URL` - Database path (default: ./database/ai_company.db)

## Service URLs

After deployment, your services will be available at:
- **Frontend**: `https://your-domain.railway.app`
- **Backend API**: `https://your-domain.railway.app/api`
- **Bolt.diy**: `https://your-domain.railway.app/bolt`

## Troubleshooting

### Common Issues
1. **API Key Errors**: Make sure `CLAUDE_API_KEY` is set correctly
2. **Database Issues**: Ensure database directory is writable
3. **Port Conflicts**: Check if ports 3000, 5000, 5174 are available
4. **Web3 Errors**: Verify `PRIVATE_KEY` and `RPC_URL` are correct

### Health Checks
- Backend: `GET /api/health`
- Frontend: `GET /`
- Bolt.diy: `GET /bolt`

## Monitoring

### View Logs
```bash
# All services
docker-compose logs -f

# Specific service
docker-compose logs -f ai-company-backend
docker-compose logs -f ai-company-frontend
docker-compose logs -f bolt-diy
```

### Check Status
```bash
docker-compose ps
```

## Scaling

### Horizontal Scaling
- Use load balancer for multiple backend instances
- Use CDN for frontend static assets
- Use managed database (PostgreSQL) for production

### Vertical Scaling
- Increase memory and CPU for Docker containers
- Use Redis for session storage
- Use external file storage (AWS S3) for Bolt.diy files
