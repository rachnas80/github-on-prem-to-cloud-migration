# ADR-001 — GitHub EMU vs Standard GitHub SaaS

**Status:** Accepted
**Date:** [YYYY-MM-DD]
**Deciders:** [TPM Name], [Architect Name], [Security Lead]
**Ticket/Issue:** #1

---

## Context

As we migrate from GitHub Enterprise Server, we must decide which GitHub Cloud offering to adopt:

1. **Standard SaaS** — users bring personal GitHub.com accounts and join the enterprise org
2. **Enterprise Managed Users (EMU)** — accounts fully managed and provisioned via IdP (Azure AD)

Our organization requires mandatory SSO enforcement, no personal device access to company code, and a full audit trail of all user activity.

---

## Decision

We will adopt **GitHub Enterprise Managed Users (EMU)**.

---

## Considered Options

| Option | Pros | Cons |
|--------|------|------|
| Standard GitHub SaaS | Easier adoption, less friction | Cannot enforce SSO 100%, personal/work blur, compliance risk |
| GitHub EMU | Full SSO enforcement, SCIM provisioning, compliance control | No personal account use, more complex onboarding |

---

## Decision Outcome

**Chosen option:** GitHub EMU

**Justification:** Security and compliance team mandates 100% SSO enforcement. SCIM provisioning via Azure AD allows automated user lifecycle management. EMU meets SOC2 audit requirements.

---

## Consequences

**Positive:**
- Full enterprise control over user accounts
- Automated provisioning/deprovisioning via SCIM
- 100% SSO enforcement — no bypass possible
- Meets compliance and security audit requirements

**Negative:**
- Developers cannot use managed accounts for personal/OSS projects
- Requires IdP to be configured before any user can access GitHub
- EMU has some feature restrictions (external forking limited)

**Risks:**
- IdP misconfiguration could lock all users out — mitigated by break-glass account procedure

---

## Links & References

- [GitHub EMU documentation](https://docs.github.com/en/enterprise-cloud@latest/admin/identity-and-access-management/using-enterprise-managed-users-for-iam)
- [EMU feature limitations](https://docs.github.com/en/enterprise-cloud@latest/admin/identity-and-access-management/understanding-iam-for-enterprises/abilities-and-restrictions-of-managed-user-accounts)
