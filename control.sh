#!/bin/sh
set -eu

umask 077
ROOT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
RECEIPT_DIR="$ROOT_DIR/.wsd/receipts"
MAX_INCREMENTAL_SPEND_USD=${MAX_INCREMENTAL_SPEND_USD:-0}

say() { printf '%s\n' "$*"; }
fail() { printf 'ERROR: %s\n' "$*" >&2; exit 1; }
now_utc() { date -u '+%Y-%m-%dT%H:%M:%SZ'; }

hash_file() {
  file=$1
  if command -v shasum >/dev/null 2>&1; then
    shasum -a 256 "$file" | awk '{print $1}'
  elif command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$file" | awk '{print $1}'
  else
    cksum "$file" | awk '{print $1 "-cksum"}'
  fi
}

assert_zero_cost() {
  case "$MAX_INCREMENTAL_SPEND_USD" in
    0|0.0|0.00) ;;
    *) fail "MAX_INCREMENTAL_SPEND_USD must remain 0; received $MAX_INCREMENTAL_SPEND_USD" ;;
  esac
  [ "${WSD_ALLOW_PAID_FALLBACK:-0}" = "0" ] || fail "Paid fallback is prohibited"
  [ "${WSD_ALLOW_AUTO_TOPUP:-0}" = "0" ] || fail "Automatic top-up is prohibited"
  [ "${WSD_ALLOW_CROSS_REPO:-0}" = "0" ] || fail "Cross-repository runtime access is prohibited"
}

validate() {
  assert_zero_cost
  required='README.md SECURITY.md ZERO-COST-POLICY.md control.sh config/zero-cost.env .github/copilot-instructions.md .github/workflows/validate.yml docs/ARCHITECTURE.md commands/README.md'
  for path in $required; do
    [ -f "$ROOT_DIR/$path" ] || fail "Missing required file: $path"
  done

  extra_shell=$(find "$ROOT_DIR" -type f \( -name '*.sh' -o -name '*.bash' -o -name '*.command' \) ! -path "$ROOT_DIR/control.sh" ! -path "$ROOT_DIR/.git/*" -print 2>/dev/null || true)
  [ -z "$extra_shell" ] || fail "Single-script rule violated by: $extra_shell"

  if [ -d "$ROOT_DIR/.git" ]; then
    tracked_secret_names=$(git -C "$ROOT_DIR" ls-files 2>/dev/null | grep -Ei '(^|/)(id_rsa|id_ed25519|.*\.pem|.*\.p12|.*\.pfx|.*recovery.*code.*|.*token.*|.*secret.*)$' || true)
    [ -z "$tracked_secret_names" ] || fail "Credential-like filenames are tracked: $tracked_secret_names"
  fi

  say "VALIDATION=PASS"
  say "MAX_INCREMENTAL_SPEND_USD=0"
  say "BROWSER_HOOK_REQUIRED=NO"
  say "LOCALHOST_REQUIRED=NO"
  say "CROSS_REPOSITORY_RUNTIME=DENIED"
  say "SINGLE_SCRIPT=control.sh"
}

status() {
  assert_zero_cost
  say "repository=WAVE"
  say "timestamp=$(now_utc)"
  say "max_incremental_spend_usd=0"
  say "browser_hook_required=no"
  say "localhost_required=no"
  say "public_deployment=denied"
  say "cross_repository_runtime=denied"
  say "final_approval=owner"
}

inventory() {
  assert_zero_cost
  say "WAVE LOCAL CAPABILITY INVENTORY"
  for tool in sh git gh awk sed grep find df uname whoami; do
    if command -v "$tool" >/dev/null 2>&1; then
      say "- $tool: $(command -v "$tool")"
    else
      say "- $tool: not-installed"
    fi
  done
}

run_allowed_line() {
  line=$1
  case "$line" in
    ''|'#'*) return 0 ;;
    pwd) pwd ;;
    date|'date -u') $line ;;
    whoami) whoami ;;
    'uname -a') uname -a ;;
    'df -h') df -h ;;
    'git status'|'git status --short') git -C "$ROOT_DIR" ${line#git } ;;
    'git branch --show-current') git -C "$ROOT_DIR" branch --show-current ;;
    'git log --oneline -5') git -C "$ROOT_DIR" log --oneline -5 ;;
    'gh auth status') gh auth status ;;
    'gh repo view') gh repo view ;;
    'gh run list --limit 10') gh run list --limit 10 ;;
    *) fail "Command is outside the WAVE zero-cost read-only allowlist: $line" ;;
  esac
}

execute_file() {
  assert_zero_cost
  command_file=${1:-}
  [ -n "$command_file" ] || fail "Usage: sh control.sh execute <command-file>"
  [ -f "$command_file" ] || fail "Command file not found: $command_file"
  case "$command_file" in
    "$ROOT_DIR"/commands/*|commands/*) ;;
    *) fail "Command files must be stored under commands/" ;;
  esac

  mkdir -p "$RECEIPT_DIR"
  stamp=$(date -u '+%Y%m%dT%H%M%SZ')
  output="$RECEIPT_DIR/${stamp}-wave.out.txt"
  receipt="$RECEIPT_DIR/${stamp}-wave.json"
  command_hash=$(hash_file "$command_file")

  : > "$output"
  while IFS= read -r line || [ -n "$line" ]; do
    normalized=$(printf '%s' "$line" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    run_allowed_line "$normalized" >> "$output" 2>&1
  done < "$command_file"

  output_hash=$(hash_file "$output")
  cat > "$receipt" <<EOF
{"timestamp":"$(now_utc)","repository":"WAVE","command_sha256":"$command_hash","output_sha256":"$output_hash","incremental_spend_usd":0,"execution_mode":"local-read-only","browser_hook_required":false,"localhost_required":false,"cross_repository_runtime":"DENIED","owner_approval_required":true}
EOF
  say "EXECUTION=COMPLETE"
  say "output=$output"
  say "receipt=$receipt"
}

command=${1:-status}
case "$command" in
  validate) validate ;;
  status) status ;;
  inventory) inventory ;;
  execute) shift; execute_file "$@" ;;
  *) fail "Unknown command: $command" ;;
esac
