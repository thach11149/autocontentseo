#!/bin/bash
set -euo pipefail

# Chỉ chạy trên Claude Code web (remote container)
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# === CẤU HÌNH ===
# Điền GitHub repo URL của bạn vào đây sau khi push lên GitHub
REPO_URL="https://github.com/GITHUB_USERNAME/REPO_NAME.git"
WORK_DIR="/home/user"

# === KIỂM TRA PLACEHOLDER ===
if [[ "$REPO_URL" == *"GITHUB_USERNAME"* ]]; then
  echo "[session-start] REPO_URL chưa được cấu hình. Bỏ qua bước clone/pull."
  exit 0
fi

# === CLONE hoặc PULL ===
if [ ! -d "$WORK_DIR/.git" ]; then
  echo "[session-start] Clone repo lần đầu..."
  git clone "$REPO_URL" /tmp/seo-repo
  # Copy toàn bộ nội dung (trừ .git) vào WORK_DIR
  cp -r /tmp/seo-repo/. "$WORK_DIR/"
  rm -rf /tmp/seo-repo
  echo "[session-start] Clone hoàn tất."
else
  echo "[session-start] Repo đã có, pulling latest..."
  cd "$WORK_DIR"
  git pull origin main 2>/dev/null || git pull origin master 2>/dev/null || echo "[session-start] Pull thất bại, dùng bản hiện có."
  echo "[session-start] Pull hoàn tất."
fi

echo "[session-start] Sẵn sàng. /viet-bai-seo có thể dùng ngay."
