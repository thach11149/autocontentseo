#!/bin/bash
set -euo pipefail

# Chỉ chạy trên Claude Code web (remote container)
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# === CẤU HÌNH ===
GITHUB_USER="thach11149"
REPO_NAME="autocontentseo"
TOKEN="${GITHUB_TOKEN:-}"
WORK_DIR="/home/user"

# Xây URL có token nếu có, không thì dùng public URL
if [ -n "$TOKEN" ]; then
  REPO_URL="https://${GITHUB_USER}:${TOKEN}@github.com/${GITHUB_USER}/${REPO_NAME}.git"
else
  REPO_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"
fi

# === CLONE hoặc PULL ===
if [ ! -d "$WORK_DIR/.git" ]; then
  echo "[session-start] Clone repo lần đầu..."
  git clone "$REPO_URL" /tmp/seo-repo
  cp -r /tmp/seo-repo/. "$WORK_DIR/"
  rm -rf /tmp/seo-repo
  echo "[session-start] Clone hoàn tất."
else
  echo "[session-start] Repo đã có, pulling latest..."
  cd "$WORK_DIR"
  # Cập nhật remote với token mới nhất
  git remote set-url origin "$REPO_URL" 2>/dev/null || true
  git pull origin master 2>/dev/null || git pull origin main 2>/dev/null || echo "[session-start] Pull thất bại, dùng bản hiện có."
  echo "[session-start] Pull hoàn tất."
fi

echo "[session-start] Sẵn sàng. /viet-bai-seo có thể dùng ngay."
