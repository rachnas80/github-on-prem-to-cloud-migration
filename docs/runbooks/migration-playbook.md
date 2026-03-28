# Migration Playbook — Per-Team Runbook

**Version:** 1.0 | **Owner:** [TPM Name] | **Last updated:** [Date]

---

## Pre-Migration Checklist

### Repo inventory
- [ ] Run repo inventory script: `bash scripts/repo-inventory.sh <org> cloud`
- [ ] Confirm total repo count with team lead
- [ ] Identify repos with zero commits in 12+ months — archive candidates

### Access & permissions
- [ ] Document all team members and current permission levels
- [ ] Identify external collaborators or bot accounts
- [ ] Confirm all users have EMU accounts with SSO working

### Secrets audit
- [ ] Audit all repository and environment secrets
- [ ] Document secrets referencing on-prem systems
- [ ] Security lead sign-off obtained

### CI/CD dependencies
- [ ] List all GitHub Actions workflows per repo
- [ ] Identify self-hosted runner label references
- [ ] Confirm runner strategy for this team

### Webhooks & integrations
- [ ] Export all active webhooks per repo
- [ ] List third-party integrations (Jira, Slack, SonarQube, etc.)
- [ ] Integration owners notified

---

## Migration Steps

### Step 1 — Install and authenticate GEI

```bash
gh extension install github/gh-gei
export GH_SOURCE_PAT=<your-ghes-pat>
export GH_PAT=<your-ghec-pat>
gh gei --version
```

### Step 2 — Generate migration script

```bash
gh gei generate-script \
  --github-source-org <source-org> \
  --github-target-org <target-org> \
  --output migrate.sh

cat migrate.sh   # Always review before running
```

### Step 3 — Run migration (dry run first)

```bash
gh gei migrate-repo \
  --github-source-org <source-org> \
  --source-repo <repo-name> \
  --github-target-org <target-org> \
  --target-repo <repo-name> \
  --queue-only

gh gei wait-for-migration --migration-id <id>
```

### Step 4 — Validate migrated repository

```
[ ] All branches present and match source
[ ] Full commit history preserved
[ ] All pull requests migrated (open + closed)
[ ] All issues migrated
[ ] Wiki migrated (if applicable)
[ ] Tags and releases migrated
```

### Step 5 — Reconfigure CI/CD

```bash
# Find all runner label references
grep -r "runs-on:" .github/workflows/

# Re-add repository secrets (NOT migrated by GEI)
gh secret set MY_SECRET --repo <target-org>/<repo-name>
```

### Step 6 — Update webhooks & integrations

- [ ] Update each webhook URL from GHES hostname to github.com
- [ ] Re-authenticate all third-party integrations
- [ ] Test each integration end-to-end

### Step 7 — 48-hour parallel run

- Source repo set to **read-only** (do not delete)
- All new commits go to cloud repo
- Run full CI/CD pipeline at least once
- Confirm all team members can push to new repo

### Step 8 — Final cutover

- [ ] Archive source repo on GHES (Settings → Danger Zone → Archive)
- [ ] All team members confirmed on cloud repo
- [ ] TPM notified — migration complete
- [ ] Migration tracker issue closed as Done

---

## Rollback Procedure

1. Stop all commits to cloud repo immediately
2. Re-open source GHES repo for writes (un-archive)
3. Notify team via Slack
4. Open a **Blocker** issue in this repo
5. TPM + Architect convene within 24 hours

**Do not delete the source repo until Phase 3 sign-off.**

---

## On-Call Contacts During Migration Week

| Role | Name | Slack |
|------|------|-------|
| TPM on-call | [Name] | @handle |
| Platform on-call | [Name] | @handle |
| Security on-call | [Name] | @handle |
