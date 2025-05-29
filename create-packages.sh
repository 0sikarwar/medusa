#!/bin/bash
set -e

echo "🔧 Building all packages..."
yarn build

echo "📦 Packing all packages..."
yarn workspaces foreach -vpt --topological-dev --no-private exec npm pack

echo "✅ All packages packed successfully!"
