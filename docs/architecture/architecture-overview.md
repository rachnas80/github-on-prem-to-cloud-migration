# Architecture Overview — GitHub On-Prem to Cloud Migration

**Status:** Draft | **Last updated:** [Date] | **Owner:** [Architect Name]

---

## Current State (As-Is)

| Attribute | Details |
|-----------|---------|
| Platform | GitHub Enterprise Server [version] |
| Total repositories | [Number] |
| Total users | [Number] |
| Authentication | LDAP / internal SSO |
| CI/CD runners | Self-hosted, on-premises |
| Secret management | Manual / inline secrets |
| Hosting | [Data centre location] |

---

## Target State (To-Be)

| Attribute | Details |
|-----------|---------|
| Platform | GitHub Cloud — Enterprise Managed Users (EMU) |
| Authentication | SAML SSO via Azure AD / Okta |
| User provisioning | SCIM automated provisioning |
| CI/CD runners | Hybrid — GitHub-hosted + self-hosted |
| Secret management | GitHub Secrets + [Vault/AWS Secrets Manager] |
| Security scanning | GitHub Advanced Security (GHAS) |

---

## Migration Tooling

| Tool | Purpose |
|------|---------|
| GitHub Enterprise Importer (GEI) | Primary repo migration tool |
| GitHub CLI (`gh`) | Automation and scripting |
| GEI Inventory Tool | Pre-migration repo audit |

---

## Key Architectural Decisions

| ADR | Decision |
|-----|----------|
| [ADR-001](../decisions/ADR-001-emu-vs-saas.md) | EMU vs standard GitHub SaaS |
| ADR-002 | Runner strategy (hybrid vs cloud-only) |
| ADR-003 | Secret migration approach |

---

## Network & Connectivity Checklist

- [ ] GitHub Cloud IP allowlisting configured
- [ ] Corporate proxy settings for GitHub API documented
- [ ] Self-hosted runner network access to github.com confirmed
- [ ] Webhook endpoints updated for cloud URLs

---

## Security & Compliance Checklist

- [ ] GHAS policies defined and documented
- [ ] Secret scanning push protection enabled
- [ ] Branch protection rules standardized
- [ ] Audit log streaming configured
- [ ] Data residency requirements reviewed and signed off
