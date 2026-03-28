# GitHub On-Prem → Cloud Migration

> Migrating repositories across engineering teams from GitHub Enterprise Server (GHES) to GitHub Cloud (EMU).
> **Program Lead:** [Rachna Singh] | **Status:** Phase 1 of 3 | **Target:** Q3 2026

[![Phase](https://img.shields.io/badge/Phase-1%20of%203-blue)]()
[![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)]()
[![Repos Migrated](https://img.shields.io/badge/Repos%20Migrated-0%2F0-lightgrey)]()
[![License](https://img.shields.io/badge/License-Internal-red)]()

---

## Program Overview

This program manages the full lifecycle migration of all engineering repositories from **GitHub Enterprise Server (on-premises)** to **GitHub Cloud (Enterprise Managed Users / EMU)**. The migration encompasses repository history, CI/CD pipelines, access controls, secrets, webhooks, and developer workflows.

**Business drivers:**
- Reduce on-premises infrastructure maintenance overhead
- Enable GitHub Advanced Security (GHAS) features at scale
- Standardize developer tooling across all teams
- Improve uptime, reliability, and global collaboration

---

## Current Status

| Phase | Scope | Teams | Repos | Status | Target Date |
|-------|-------|-------|-------|--------|-------------|
| Phase 1 | Pilot migration | 2–3 pilot teams | ~20 repos | In Progress | [Date] |
| Phase 2 | Wave 1 rollout | 5–6 teams | ~150 repos | Planned | [Date] |
| Phase 3 | Full cutover | All remaining teams | ~250+ repos | Planned | [Date] |

---

## Quick Links

| Resource | Link |
|----------|------|
| Migration runbook | [docs/runbooks/migration-playbook.md](./docs/runbooks/migration-playbook.md) |
| Risk register | [docs/risk-register/risk-matrix.md](./docs/risk-register/risk-matrix.md) |
| Decision log (ADRs) | [docs/decisions/](./docs/decisions/) |
| Architecture overview | [docs/architecture/architecture-overview.md](./docs/architecture/architecture-overview.md) |
| Phase 1 plan | [planning/phases/phase-1.md](./planning/phases/phase-1.md) |
| RACI matrix | [planning/raci.md](./planning/raci.md) |
| Metrics & KPIs | [metrics/kpi-dashboard.md](./metrics/kpi-dashboard.md) |

---

## Architecture Summary

| Attribute | On-Premises (Current) | Cloud (Target) |
|-----------|-----------------------|----------------|
| Platform | GitHub Enterprise Server | GitHub Cloud EMU |
| Auth | LDAP / internal SSO | SAML SSO via Azure AD |
| Hosting | Self-hosted data centre | GitHub-managed (SaaS) |
| Security scanning | Manual / limited | GHAS — automated |
| Runners | Self-hosted only | Hybrid (cloud + self-hosted) |
| Access model | Org/team based | EMU — managed accounts |

See full diagrams → [docs/architecture/](./docs/architecture/)

---

## How to Request Your Team's Migration

1. Open an issue using the **[Migration Request template](./.github/ISSUE_TEMPLATE/migration-request.md)**
2. Fill in all required fields (team name, repo list, dependencies, target date)
3. TPM triages and assigns to a migration wave
4. Team lead reviews and signs off on the runbook

---

## Contacts & RACI

| Role | Name | Responsibility |
|------|------|---------------|
| Senior TPM | [Your Name] | Program delivery, stakeholder comms, risk |
| Platform Architect | [Name] | Technical design, tooling decisions |
| Security Lead | [Name] | Compliance, secrets audit, GHAS policy |
| Engineering Lead | [Name] | Team coordination, rollback decisions |
| Infra / DevOps | [Name] | Runner setup, DNS, webhook cutover |

---

## Repository Structure

```
github-on-prem-to-cloud-migration/
├── README.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── docs/
│   ├── architecture/
│   ├── runbooks/
│   ├── decisions/
│   └── risk-register/
├── planning/
│   ├── phases/
│   └── raci.md
├── scripts/
├── metrics/
└── .github/
    ├── ISSUE_TEMPLATE/
    ├── PULL_REQUEST_TEMPLATE.md
    └── workflows/
```

---

*Last updated: [2026/03/28] | Maintained by [Rachna Singh]*
