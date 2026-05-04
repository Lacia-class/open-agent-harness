#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail() {
  echo "FAIL: $1" >&2
  exit 1
}

echo "Checking ignored private files..."
if find private -type f ! -name README.md | grep -q .; then
  fail "private/ contains files other than README.md"
fi

echo "Checking credential-like strings..."
if rg -n --hidden --glob '!tools/release-audit.sh' --glob '!skills/open-agent-harness/scripts/release-audit.sh' --glob '!.git/**' 'sk-[A-Za-z0-9_-]{16,}|AKIA[0-9A-Z]{16}|xox[baprs]-[A-Za-z0-9-]{10,}|gh[pousr]_[A-Za-z0-9_]{20,}' .; then
  fail "credential-like token found"
fi

echo "Checking private SOP/service markers..."
if rg -n --hidden --glob '!tools/release-audit.sh' --glob '!skills/open-agent-harness/scripts/release-audit.sh' --glob '!.git/**' 'hero-sms|779\\.chat|paypal\\.com|paypal\b|proton\\.me|protonmail|max\\.779\\.chat|cockpit tools' .; then
  fail "private service/SOP marker found"
fi

echo "Checking actual private URLs and local paths..."
if rg -n --hidden --glob '!tools/release-audit.sh' --glob '!skills/open-agent-harness/scripts/release-audit.sh' --glob '!.git/**' '/Users/[^ ]+|\\.codex/sessions|https?://[^ ]*(otp|verify|sms|code|token|mail)' .; then
  fail "private path or sensitive URL found"
fi

echo "Checking hard private knowledge dependency..."
if rg -n --hidden --glob '!tools/release-audit.sh' --glob '!skills/open-agent-harness/scripts/release-audit.sh' --glob '!.git/**' 'YJango|jiangou|Jiangou|渐构|Episode [0-9]+|Ep[0-9]+' core adapters docs templates skills README.md README.zh-CN.md AGENTS.md CLAUDE.md INSTALL.md harness.yaml; then
  fail "private knowledge graph/course dependency found in public files"
fi

echo "PASS: release audit completed"
