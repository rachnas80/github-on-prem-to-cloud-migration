# Phase 1 — Pilot Migration

**Status:** In Progress | **Target:** [Date] | **TPM:** [Your Name]

**Goal:** Validate migration tooling and process with 2–3 low-risk pilot teams before scaling.

---

## Objectives

1. Validate GitHub Enterprise Importer (GEI) works for our repo types
2. Identify CI/CD reconfiguration patterns applicable to all teams
3. Produce a tested, repeatable runbook for Phase 2
4. Confirm EMU onboarding (SSO, SCIM) works end-to-end

---

## Teams in Scope

| Team | Repos | Contact | Status |
|------|-------|---------|--------|
| [Pilot Team 1] | ~[N] | @github-handle | Not started |
| [Pilot Team 2] | ~[N] | @github-handle | Not started |

---

## Milestones

| Milestone | Owner | Target | Status |
|-----------|-------|--------|--------|
| Pre-migration checklist complete — Team 1 | Team Lead | [Date] | Not started |
| GEI dry run — Team 1 | Architect | [Date] | Not started |
| Full migration — Team 1 | Architect | [Date] | Not started |
| 48hr parallel run — Team 1 | Eng Lead | [Date] | Not started |
| Cutover — Team 1 | TPM | [Date] | Not started |
| Repeat above for Team 2 | All | [Date] | Not started |
| Phase 1 retrospective | TPM | [Date] | Not started |
| Runbook updated with learnings | TPM | [Date] | Not started |

---

## Success Criteria

- [ ] All pilot repos migrated with 100% history preserved
- [ ] All CI/CD pipelines passing on cloud repos
- [ ] All pilot team members authenticated via SSO
- [ ] Zero P0/P1 incidents during parallel run
- [ ] Runbook signed off for Phase 2 use

---

## Dependencies

| Dependency | Owner | Status |
|------------|-------|--------|
| Azure AD SAML SSO configured | IT/IdP Team | [Status] |
| SCIM provisioning tested | IT/IdP Team | [Status] |
| GitHub EMU org created + baseline policies set | Architect | [Status] |
| Self-hosted runners registered in cloud org | DevOps | [Status] |
