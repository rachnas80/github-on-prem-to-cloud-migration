#!/bin/bash
# repo-inventory.sh — Generates a CSV inventory of all repos in a GitHub org
# Usage: bash scripts/repo-inventory.sh <org-name>
# Prereq: gh CLI authenticated

set -e
ORG="${1:-}"
if [ -z "$ORG" ]; then
  echo "Usage: $0 <org-name>"
  exit 1
fi

OUTPUT="metrics/repo-inventory-$(date +%Y-%m-%d).csv"
echo "repo_name,visibility,size_kb,default_branch,last_push,open_issues,open_prs,archived" > "$OUTPUT"

gh repo list "$ORG" \
  --limit 1000 \
  --json name,visibility,diskUsage,defaultBranchRef,pushedAt,issues,pullRequests,isArchived \
  --jq '.[] | [
    .name, .visibility,
    (.diskUsage | tostring),
    (.defaultBranchRef.name // "unknown"),
    (.pushedAt | split("T")[0]),
    (.issues.totalCount | tostring),
    (.pullRequests.totalCount | tostring),
    (.isArchived | tostring)
  ] | @csv' >> "$OUTPUT"

TOTAL=$(tail -n +2 "$OUTPUT" | wc -l | tr -d ' ')
echo "Done. $TOTAL repos inventoried → $OUTPUT"
