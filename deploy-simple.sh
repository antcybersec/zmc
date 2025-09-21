#!/bin/bash

# Simple Deployment Script (No Docker Required)
echo "🚀 Starting Simple AI Company Deployment..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm first."
    exit 1
fi

echo "✅ Node.js and npm are installed"

# Install backend dependencies
echo "📦 Installing backend dependencies..."
npm install

# Install frontend dependencies
echo "📦 Installing frontend dependencies..."
cd client
npm install
cd ..

# Install Bolt.diy dependencies
echo "📦 Installing Bolt.diy dependencies..."
cd bolt.diy-main
if command -v pnpm &> /dev/null; then
    pnpm install
else
    echo "⚠️  pnpm not found, using npm instead..."
    npm install
fi
cd ..

# Create production environment file
echo "⚙️  Creating production environment file..."
cat > .env.production << EOF
NODE_ENV=production
PORT=5000
CLAUDE_API_KEY=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
CLAUDE_MODEL=claude-3-haiku-20240307
DATABASE_URL=./database/ai_company.db
PRIVATE_KEY=your_private_key_here
RPC_URL=https://api.avax.network/ext/bc/C/rpc
CONTRACT_ADDRESS=your_contract_address_here
EOF

# Create frontend production environment
echo "⚙️  Creating frontend production environment..."
cat > client/.env.production << EOF
REACT_APP_API_URL=http://localhost:5000
REACT_APP_BOLT_URL=http://localhost:5174
EOF

# Create Bolt.diy production environment
echo "⚙️  Creating Bolt.diy production environment..."
cat > bolt.diy-main/.env.production << EOF
ANTHROPIC_API_KEY=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
VITE_PUBLIC_APP_URL=http://localhost:5174
EOF

echo "🎉 Setup complete!"
echo ""
echo "📱 To start your application:"
echo "   Terminal 1: npm start (Backend API)"
echo "   Terminal 2: cd client && npm start (Frontend)"
echo "   Terminal 3: cd bolt.diy-main && pnpm dev (Bolt.diy)"
echo ""
echo "🌐 Your application will be available at:"
echo "   - Frontend: http://localhost:3000"
echo "   - Backend API: http://localhost:5000"
echo "   - Bolt.diy: http://localhost:5174"
echo ""
echo "🚀 For production deployment, use Railway or Render (see deployment guides)"
