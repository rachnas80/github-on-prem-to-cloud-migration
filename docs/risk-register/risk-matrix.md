# Risk Register — GitHub Migration Program

**Last reviewed:** [Date] | **Owner:** [TPM Name] | **Cadence:** Weekly

---

## Scoring Matrix

| Probability \ Impact | Low (1) | Medium (2) | High (3) |
|----------------------|---------|------------|---------|
| High (3) | 3 | 6 | **9** |
| Medium (2) | 2 | **4** | 6 |
| Low (1) | 1 | 2 | 3 |

**Thresholds:** 1–2 Monitor · 3–4 Manage · 6–9 Escalate

---

## Active Risks

| ID | Risk | Prob | Impact | Score | Priority | Owner | Mitigation | Status |
|----|------|------|--------|-------|----------|-------|------------|--------|
| R-01 | CI/CD pipelines break post-migration (runner labels, missing secrets) | High | High | 9 | Escalate | Eng Lead | Mandatory 48hr parallel run; pre-migration CI audit | Open |
| R-02 | GHAS secret scanning flags legacy secrets, blocks PRs | Med | Med | 4 | Manage | Security Lead | Pre-migration secrets audit; allowlist review before cutover | Open |
| R-03 | IdP misconfiguration locks all EMU users out | Low | High | 3 | Manage | Architect | Break-glass account configured; IdP tested pre-launch | Mitigated |
| R-04 | Team adoption lag — engineers resist new workflow | Med | Med | 4 | Manage | TPM | Training sessions; office hours; GHES read-only post-cutover | Open |
| R-05 | Webhook integrations fail after cutover (Jira, Slack, SonarQube) | Med | High | 6 | Escalate | DevOps Lead | Pre-migration webhook inventory; integration owners notified 2 weeks prior | Open |
| R-06 | Large repo migration fails or times out (repos >5GB) | Low | Med | 2 | Monitor | Architect | Identify large repos in inventory; test GEI on large repos in Phase 1 | Open |
| R-07 | External collaborators cannot access EMU org | Med | Med | 4 | Manage | TPM | Identify all external users in pre-migration audit; coordinate IdP guest access | Open |
| R-08 | Data residency requirements not met by GitHub Cloud | Low | High | 3 | Manage | Security Lead | Legal/compliance sign-off obtained pre-migration | Mitigated |

---

## Closed / Resolved Risks

| ID | Risk | Resolution | Date Closed |
|----|------|------------|-------------|
| — | — | — | — |
