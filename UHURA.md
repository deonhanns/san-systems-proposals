# UHURA.md — san-systems-proposals
## Mission: San Systems Proposals Platform
## Data sources and integrations
## Base config: san-scribe-hq/CREW_OPERATIONS_SPEC.md

---

## DATA SOURCES — THIS MISSION

### No database
This is a static HTML platform. No Supabase.
No server-side data store.

### n8n webhook (form submissions)
- Purpose: Receives contact/enquiry form data from
  each proposal page
- Env: URL configured per proposal in HTML
- Placeholder: `YOUR_N8N_WEBHOOK_URL`
- Status: Pending — Captain to provide URL
- Data received: Name, email, message, proposal source

### Beacon API (analytics)
- Purpose: Anonymous visit tracking per proposal
- Data: Page URL, timestamp — no personal data
- No consent required — no PII collected

---

## EMAIL

No direct email integration in this repo.
Form submissions go to n8n webhook which routes
to Captain's email or CRM.

---

## EXTERNAL APIS

| Service | Purpose | Status |
|---------|---------|--------|
| n8n | Form submission routing | Pending webhook URL |
| Netlify | Hosting + CDN | Live |
| Cloudflare | DNS | Pending subdomain setup |

---

## CLIENT DATA — WORF NOTES

- No personal data stored in this repo
- Form submissions pass through to n8n — not stored
  in any database owned by San Systems
- Client proposal content is commercially sensitive —
  each proposal directory should only be shared with
  the relevant client
- No authentication on proposal URLs — security through
  obscurity (unique URL per client)
- If a client URL needs to be revoked — remove the
  directory and redeploy

---

## PROPOSAL TRACKING

Each proposal uses the Beacon API:
```javascript
navigator.sendBeacon('/api/track', JSON.stringify({
  proposal: '[client-code]',
  event: 'view'
}));
```

This is fire-and-forget. No personal data.
Netlify logs provide additional visit data.

---

*UHURA.md — san-systems-proposals*
*Stardate 2026-07-09*
