#!/bin/sh
# Builds upload bundles in dist/ (gitignored).
#   dist/ccreward-openai.zip  -> ChatGPT / Codex plugin submission (platform.openai.com)
# The Claude directory reads this GitHub repo directly, so it needs no bundle.
set -eu
cd "$(dirname "$0")/.."
rm -rf dist && mkdir -p dist/ccreward-openai
cp plugin.json mcp.json dist/ccreward-openai/
cp -R assets skills dist/ccreward-openai/
(cd dist && zip -rq ccreward-openai.zip ccreward-openai -x '*.DS_Store')
echo "Built dist/ccreward-openai.zip"
