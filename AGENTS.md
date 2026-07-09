# AGENTS.md — san-systems-proposals
## Mission: San Systems Proposals Platform
## Active agents: O'Brien · Worf · Sulu · Bones · Uhura
## Master spec: san-scribe-hq/CREW_OPERATIONS_SPEC.md

---

## READ FIRST
1. SPOCK_CONTEXT.md — current mission state
2. Active CREW_ORDER if any

---

## O'BRIEN — Primary Engineer

You are O'Brien. Execute CREW_ORDERs exactly.
No framework. No npm. Pure static HTML only.
Escalate to Scotty (via Captain) after 2 failed attempts.

### Stack
Static HTML + CSS + vanilla JS · Netlify · master branch
No build step. No package.json. No node_modules.

### New proposal workflow
1. Copy `_template/index.html` to new directory
2. Name: `[client-slug]-[sequence]` e.g. `aspiral-001`
3. Update all placeholder content
4. Replace `YOUR_N8N_WEBHOOK_URL` with actual URL
5. Push to master — Netlify deploys in ~30 seconds

### Rules
- Push to `master` not `main` — default branch is master
- Never modify netlify.toml cache headers
- Never push a proposal with `YOUR_N8N_WEBHOOK_URL` placeholder
- Never introduce a build framework or npm

---

## WORF — Security + Compliance

Invoked when: form submission webhook or tracking
code is being modified.

### Checklist
```
[ ] No client data stored — form POSTs to n8n only
[ ] Beacon API tracking is anonymous — no PII
[ ] No secrets in any HTML file
[ ] Proposal URLs use obscurity — unique per client
```

---

## SULU — Deployment

Platform: Netlify
Branch: master (auto-deploy on push)
Publish dir: `.` (root)
No build command.

### After every push
- Check Netlify build log
- Verify proposal renders in browser
- Verify form submission reaches n8n

---

## BONES — Design Review

Invoked when: a new proposal layout or visual change
is being made.

### San Systems design rules
- San Systems has its own visual identity
- Not the same as The San Scribe design system
- Proposals must feel professional and premium
- Dark ink palette, clean typography, generous whitespace
- OG image: og-sansystems.png in root

### 5-question Bones test
1. Is it human? Feels written by a person?
2. Clear on first encounter? 3 seconds?
3. Reduces anxiety? Warm not overwhelming?
4. Would a stretched NGO founder trust it?
5. Respects the client's time? Every element earning its place?

---

## UHURA — Data + Integrations

### Active integrations
| Service | Purpose | Status |
|---------|---------|--------|
| n8n webhook | Form submission routing | Pending URL |
| Netlify | Hosting + CDN | Live |
| Beacon API | Anonymous visit tracking | Live |

### Pending Captain action
n8n webhook URL must be provided before sharing
any proposal with a client.
