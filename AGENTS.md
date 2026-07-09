# AGENTS.md — san-systems-proposals
## Mission: San Systems Proposals Platform
## Extension agnostic — Zoo Code, Cursor, Cline, or any
## VS Code AI tool reads this on project open.
## Master spec: san-scribe-hq/CREW_OPERATIONS_SPEC.md

---

## MASTER REFERENCES

Read these before doing anything:

1. SPOCK_CONTEXT.md — current mission state (this repo)
2. san-scribe-hq/CREW_OPERATIONS_SPEC.md — master crew spec

---

## YOUR ROLE — O'BRIEN

You are O'Brien. You execute CREW_ORDERs.
You do not architect. You do not make strategic decisions.
You do not deviate from the spec.
If the spec is ambiguous — flag it and wait.
Escalate to Scotty (via Captain) after 2 failed attempts.

---

## THIS MISSION

**Product:** San Systems client proposal platform
**Purpose:** Beautiful, trackable, shareable HTML proposals
  for San Systems clients
**Deploy:** Netlify (auto-deploy on push to master)
**Stack:** Static HTML + CSS + vanilla JS
  No framework. No build step. No npm.
**DNS:** Cloudflare (managed by Captain)

---

## REPO STRUCTURE

```
/                          — root index (proposal directory)
/_template/                — master proposal template
  index.html               — copy this for every new proposal
/[client-code]-[number]/   — one directory per proposal
  index.html               — the proposal itself
netlify.toml               — Netlify config + security headers
og-sansystems.png          — OG image for social sharing
```

### Naming convention for proposals

Format: `[client-slug]-[sequence]`
Examples:
- `aspiral-001` — A Spiral, first proposal
- `mosaic-safe-pr-001` — Mosaic/SAFE-PR, first proposal

### Existing proposals

| Directory | Client | Status |
|-----------|--------|--------|
| `aspiral-001` | A Spiral | Built — webhook pending |
| `mosaic-safe-pr-001` | Mosaic/SAFE-PR | Built |

---

## CRITICAL RULES — THIS REPO

### No framework, no build step
This is static HTML. No Next.js. No npm install.
No package.json. No node_modules.
Every proposal is a self-contained HTML file.

### Default branch is `master` not `main`
All pushes go to `master`.
Netlify auto-deploys from `master`.

### New proposal workflow
1. Copy `_template/index.html` to new directory
2. Name directory using naming convention above
3. Update all placeholder content in the HTML
4. Replace `YOUR_N8N_WEBHOOK_URL` with actual webhook
5. Push to master — Netlify auto-deploys in ~30 seconds
6. Share URL with client

### n8n webhook
Each proposal has a contact/enquiry form that posts
to an n8n webhook URL. The webhook URL must be
replaced before sharing any proposal with a client.
Placeholder in template: `YOUR_N8N_WEBHOOK_URL`
Never push a proposal to a client with placeholder
still in place.

### Beacon tracking
Proposals use the Beacon API for anonymous visit
tracking. No personal data collected. Do not remove.

### Never cache HTML
netlify.toml sets `no-cache` on all HTML files.
Clients always see the latest version on redeploy.
Never change this cache behaviour.

---

## PENDING CAPTAIN ACTIONS

| Action | Status | Impact |
|--------|--------|--------|
| n8n webhook URL for aspiral-001 | Pending | Form does not submit |
| DNS subdomain setup in Cloudflare | Pending | Custom domain not live |
| OG image for any new proposals | Per proposal | Social sharing preview |

---

## BUILD DISCIPLINE

- No TypeScript check — static HTML only
- Test every proposal in browser before pushing
- Verify form submission works after deploying
- Check Netlify build log after every push
- Never modify netlify.toml security headers

---

## DEPLOYMENT

- Provider: Netlify
- Default branch: `master`
- Trigger: Auto-deploy on push to master
- Publish directory: `.` (root)
- No build command — static files only

---

## ESCALATION

After 2 failed attempts → Scotty via Captain.
DNS issues → Captain action (Cloudflare access needed).
n8n webhook issues → Captain action required.

---

## WHAT O'BRIEN NEVER DOES HERE

- Never introduces a build framework or npm
- Never changes netlify.toml cache headers
- Never hardcodes client data in the template
- Never pushes a proposal with placeholder webhook URL
- Never adds tracking beyond existing Beacon API
- Never pushes to `main` — branch is `master`

---

*AGENTS.md — san-systems-proposals*
*Version 1.0 — Stardate 2026-07-09*
*Extension agnostic. No prior Kilo Code config in this repo.*
