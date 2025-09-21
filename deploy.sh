#!/bin/bash

# AI Company Deployment Script
echo "🚀 Starting AI Company Deployment..."

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker first."
    exit 1
fi

# Build and start services
echo "📦 Building Docker images..."
docker-compose build

echo "🚀 Starting services..."
docker-compose up -d

# Wait for services to be ready
echo "⏳ Waiting for services to start..."
sleep 30

# Check service health
echo "🔍 Checking service health..."

# Check backend
if curl -f http://localhost:5000/api/health > /dev/null 2>&1; then
    echo "✅ Backend API is healthy"
else
    echo "❌ Backend API is not responding"
fi

# Check frontend
if curl -f http://localhost:3000 > /dev/null 2>&1; then
    echo "✅ Frontend is healthy"
else
    echo "❌ Frontend is not responding"
fi

# Check Bolt.diy
if curl -f http://localhost:5174 > /dev/null 2>&1; then
    echo "✅ Bolt.diy is healthy"
else
    echo "❌ Bolt.diy is not responding"
fi

echo "🎉 Deployment complete!"
echo "📱 Access your application:"
echo "   - Frontend: http://localhost:3000"
echo "   - Backend API: http://localhost:5000"
echo "   - Bolt.diy: http://localhost:5174"
echo ""
echo "📊 View logs: docker-compose logs -f"
echo "🛑 Stop services: docker-compose down"
