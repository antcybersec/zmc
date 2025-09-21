# 🚀 AI Company - Multi-Agent Business Platform

An AI-powered business idea generation and development platform featuring a sophisticated multi-agent system that simulates a real company's workflow.

## 🌟 Features

### 🤖 Multi-Agent System
- **CEO Agent**: Generates innovative business ideas
- **Research Agent**: Conducts market research and competitor analysis
- **Product Agent**: Develops product concepts and features
- **CMO Agent**: Creates marketing strategies and launch plans
- **CTO Agent**: Designs technical architecture and tech stack
- **Head of Engineering**: Generates Bolt.diy prompts for website development
- **Finance Agent**: Manages revenue distribution and token economics

### 🎯 Core Capabilities
- **Business Idea Generation**: AI-powered idea creation with market analysis
- **Product Development**: Complete product concept development
- **Marketing Strategy**: Comprehensive marketing and launch strategies
- **Technical Planning**: Full-stack technical architecture
- **Website Development**: Integration with Bolt.diy for instant website creation
- **Revenue Management**: Blockchain-based revenue distribution system

### 🛠️ Technology Stack
- **Backend**: Node.js, Express.js
- **Frontend**: React.js
- **AI Integration**: Claude API (Anthropic)
- **Development Environment**: Bolt.diy
- **Database**: SQLite
- **Blockchain**: Avalanche AVAX
- **Deployment**: Railway, Docker

## 🚀 Quick Start

### Prerequisites
- Node.js (v18+)
- npm
- pnpm (for Bolt.diy)
- Claude API key

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/ai-company-avalanche.git
   cd ai-company-avalanche
   ```

2. **Install dependencies**
```bash
   # Backend
npm install
   
   # Frontend
cd client && npm install && cd ..
   
   # Bolt.diy
   cd bolt.diy-main && pnpm install && cd ..
```

3. **Set up environment variables**
```bash
   # Copy environment files
cp env.example .env
   cp client/.env.example client/.env
   cp bolt.diy-main/.env.example bolt.diy-main/.env.local

   # Add your API keys
   # Edit .env files with your actual API keys
```

4. **Start the application**
```bash
   # Terminal 1: Backend API
npm start

   # Terminal 2: Frontend
   cd client && npm start
   
   # Terminal 3: Bolt.diy
   cd bolt.diy-main && pnpm dev
   ```

5. **Access the application**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000
   - Bolt.diy: http://localhost:5174

## 🌐 Deployment

### Railway Deployment (Recommended)

1. **Connect to Railway**
   - Go to [Railway.app](https://railway.app)
   - Sign up with GitHub
   - Click "New Project" → "Deploy from GitHub repo"
   - Select your `ai-company-avalanche` repository

2. **Deploy Services**
   - Deploy Backend API service
   - Deploy Frontend service
   - Deploy Bolt.diy service

3. **Set Environment Variables**
   - Add your API keys in Railway dashboard
   - Configure production URLs

### Docker Deployment

```bash
# Build and run with Docker Compose
docker-compose up --build -d
```

## 📁 Project Structure

```
avalanche-team1/
├── agents/                 # AI agent implementations
│   ├── CEOAgent.js
│   ├── ResearchAgent.js
│   ├── ProductAgent.js
│   ├── CMOAgent.js
│   ├── CTOAgent.js
│   ├── HeadOfEngineeringAgent.js
│   └── FinanceAgent.js
├── client/                 # React frontend
│   ├── src/
│   ├── public/
│   └── package.json
├── bolt.diy-main/         # Bolt.diy development environment
├── database/              # SQLite database
├── routes/                # API routes
├── services/              # Business logic services
├── smartcontracts/        # Avalanche smart contracts
└── server.js              # Main server file
```

## 🔧 API Endpoints

### Ideas
- `POST /api/agents/generate-ideas` - Generate new business ideas
- `GET /api/ideas` - Get all ideas
- `GET /api/ideas/:id` - Get specific idea

### Research
- `POST /api/agents/research/:ideaId` - Research an idea

### Product Development
- `POST /api/agents/product/:ideaId` - Develop product concept

### Marketing
- `POST /api/agents/marketing/:productId` - Create marketing strategy

### Technical
- `POST /api/agents/technical/:productId` - Design technical strategy
- `POST /api/agents/bolt-prompt/:productId` - Generate Bolt.diy prompt

### Finance
- `POST /api/finance/distribute/:projectId` - Distribute revenue

## 🌟 Key Features

### Multi-Agent Workflow
1. **CEO Agent** generates business ideas
2. **Research Agent** analyzes market potential
3. **Product Agent** develops product concepts
4. **CMO Agent** creates marketing strategies
5. **CTO Agent** designs technical architecture
6. **Head of Engineering** generates development prompts
7. **Finance Agent** manages revenue distribution

### AI Integration
- Claude API for natural language processing
- Intelligent prompt generation
- Context-aware responses
- Multi-step reasoning

### Blockchain Integration
- Avalanche AVAX token distribution
- Smart contract revenue management
- Decentralized finance features

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📄 License

This project is licensed under the MIT License.

## 🆘 Support

For support and questions:
- Create an issue on GitHub
- Check the deployment guides in the repository

## 🎯 Roadmap

- [ ] Enhanced AI agent capabilities
- [ ] More blockchain integrations
- [ ] Advanced analytics dashboard
- [ ] Mobile application
- [ ] API marketplace integration

---

**Built with ❤️ using AI agents and modern web technologies**