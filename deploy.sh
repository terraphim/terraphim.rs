#!/usr/bin/env bash
# Deploy terraphim.rs to Cloudflare Pages (personal account)
set -euo pipefail

source ~/.my_cloudflare.sh

echo "Deploying terraphim.rs to Cloudflare Pages..."
CLOUDFLARE_ACCOUNT_ID=$CLOUDFLARE_ACCOUNT_ID \
  ~/.bun/bin/wrangler pages deploy . \
  --project-name terraphim-rs \
  --branch main

echo "Done. Site live at terraphim-rs.pages.dev"
echo "Configure DNS at Gandi to point terraphim.rs to Cloudflare Pages."
