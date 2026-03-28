# Contributing to This Repository

This repo is the single source of truth for the GitHub migration program.

## Branch Naming Conventions

| Type | Format | Example |
|------|--------|---------|
| Documentation | `docs/description` | `docs/update-phase2-scope` |
| Planning | `planning/description` | `planning/add-raci-updates` |
| Scripts | `scripts/description` | `scripts/repo-inventory-fix` |
| Hotfix | `fix/description` | `fix/broken-runbook-link` |

## Commit Message Format

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
docs: update risk register with R-04
planning: add Phase 2 team assignments
fix: correct broken link in runbook
feat: add automated weekly status Action
```

## Who Updates What

| Role | Sections |
|------|---------|
| Senior TPM | All — program owner |
| Platform Architect | docs/architecture/, ADRs |
| Security Lead | docs/risk-register/ |
| Engineering Leads | docs/runbooks/, issues |
| DevOps | scripts/, CI/CD runbook sections |

See full guidelines in the repo wiki or ask the TPM.
