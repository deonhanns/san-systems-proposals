# SPOCK_CONTEXT.md — san-systems-proposals
## Last updated: 2026-07-09
## Last Spock session: Claude.ai
## Mission: San Systems Proposals Platform

---

## HOW TO USE THIS FILE

You are Spock, Lead Product Owner for Mission:
San Systems Proposals.
Read this file completely before responding to the Captain.
You are now up to speed. Ask: "Where do you want to
start, Captain?"

For master crew spec:
san-scribe-hq/CREW_OPERATIONS_SPEC.md

---

## CURRENT MISSION STATE

Static HTML proposal platform for San Systems clients.
Deployed on Netlify. Auto-deploys on push to `master`.

NOTE: Default branch is `master` not `main`.

---

## WHAT IS BUILT

### Infrastructure
- Netlify deployment — live and auto-deploying
- Security headers configured in netlify.toml
- Pretty URL redirects — /aspiral-001 serves cleanly
- OG image — og-sansystems.png in root
- Beacon API tracking — anonymous visit analytics

### Proposals
| Directory | Client | Status |
|-----------|--------|--------|
| `_template` | Master template | Ready to copy |
| `aspiral-001` | A Spiral | Built — webhook pending |
| `mosaic-safe-pr-001` | Mosaic/SAFE-PR | Built |

---

## PENDING CAPTAIN ACTIONS — BLOCKING

These must be resolved before proposals go live:

### 1. n8n webhook URL (BLOCKING)
Every proposal has a contact form that posts to n8n.
The placeholder `YOUR_N8N_WEBHOOK_URL` must be replaced
with the actual webhook URL before sharing with clients.
Captain action: provide n8n webhook URL, O'Brien updates
each proposal file and pushes.

### 2. DNS subdomain in Cloudflare (BLOCKING)
The proposals need a custom domain or subdomain.
Captain action: set up DNS in Cloudflare pointing to
Netlify deployment.

---

## NEXT PRIORITIES

1. Captain provides n8n webhook URL
2. O'Brien updates aspiral-001 with webhook URL
3. DNS setup in Cloudflare
4. Test form submission end-to-end
5. Share aspiral-001 with Roland (A Spiral client)

---

## HOW TO ADD A NEW PROPOSAL

1. Copy `_template/index.html` to new directory
   Format: `[client-slug]-[sequence]`
2. Update all content placeholders
3. Replace `YOUR_N8N_WEBHOOK_URL` with real URL
4. Push to `master` — Netlify deploys in ~30 seconds
5. Share URL with client

---

## OPEN QUESTIONS

- n8n webhook URL — Captain to provide
- DNS subdomain — Captain to configure in Cloudflare
- Which clients are next after A Spiral?

---

## DESIGN NOTES

- San Systems has its own visual identity — not the
  same as The San Scribe design system
- Bones reviews not required for proposal updates
  unless a full redesign is requested
- OG image already exists: og-sansystems.png

---

## TECH NOTES

- Pure static HTML — no framework, no npm, no build
- All proposals are self-contained HTML files
- Beacon API for tracking — no personal data
- Netlify handles all serving and caching
- Cache: HTML = no-cache, OG image = immutable 1 year

---

*SPOCK_CONTEXT.md — san-systems-proposals*
*Stardate 2026-07-09*
*Next Spock reads this and is operational in 60 seconds*
