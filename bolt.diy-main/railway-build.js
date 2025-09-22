#!/usr/bin/env node

const { spawn } = require('child_process');
const path = require('path');

console.log('🔨 Building Bolt.diy for Railway...');

// Install dependencies first
console.log('📦 Installing dependencies...');
const install = spawn('npm', ['install'], {
  cwd: __dirname,
  stdio: 'inherit'
});

install.on('error', (error) => {
  console.error('❌ Error installing dependencies:', error);
  process.exit(1);
});

install.on('exit', (code) => {
  if (code !== 0) {
    console.error('❌ npm install failed');
    process.exit(code);
  }
  
  console.log('✅ Dependencies installed');
  
  // Try to build using npx remix
  console.log('🔨 Building with remix...');
  const build = spawn('npx', ['remix', 'vite:build'], {
    cwd: __dirname,
    stdio: 'inherit'
  });

  build.on('error', (error) => {
    console.error('❌ Error building with remix:', error);
    console.log('🔄 Trying alternative build method...');
    
    // Try vite build directly
    const viteBuild = spawn('npx', ['vite', 'build'], {
      cwd: __dirname,
      stdio: 'inherit'
    });

    viteBuild.on('error', (viteError) => {
      console.error('❌ Error building with vite:', viteError);
      process.exit(1);
    });

    viteBuild.on('exit', (viteCode) => {
      if (viteCode !== 0) {
        console.error('❌ vite build failed');
        process.exit(viteCode);
      }
      console.log('✅ Build completed with vite');
      process.exit(0);
    });
  });

  build.on('exit', (buildCode) => {
    if (buildCode !== 0) {
      console.error('❌ remix build failed');
      process.exit(buildCode);
    }
    console.log('✅ Build completed with remix');
    process.exit(0);
  });
});
