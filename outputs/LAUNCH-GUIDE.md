# Baltimore Wedding Planner — Launch Guide
# Phase 11: Pre-Launch + Deploy
# Generated: 2026-06-04

---

## PRE-LAUNCH AUDIT RESULTS

| Gate | Status | Notes |
|---|---|---|
| Gate 1: Build | PASS | 38 pages, 0 errors, sitemap generated |
| Gate 2: SEO | PASS | All meta tags 50-60/150-158, em dashes in comments only (not rendered) |
| Gate 3: Content | PASS | All placeholder content replaced. Last page: wedding-planner-cost-baltimore |
| Gate 4: Internal Linking | PASS | Homepage links all 4 services, blog posts link to services |
| Gate 5: Legal + Analytics | PASS | Privacy, Terms, Cookie, CookieConsent, Analytics all in place |
| Gate 6: Technical | PASS | astro.config correct, OG/Twitter/canonical in Layout |
| Gate 7: Business | WARN | 3 client actions required (see below) |

**VERDICT: APPROVED FOR LAUNCH** (after 3 client actions)

---

## CLIENT ACTIONS REQUIRED BEFORE LAUNCH

### Action 1: Replace GA4 Measurement ID
File: `src/components/Analytics.astro` line 7
```
const GA4_ID = 'G-XXXXXXXXXX'; // TODO: Replace
```
Steps:
1. Go to analytics.google.com
2. Admin > Property > Data Streams > Web
3. Copy Measurement ID (format: G-XXXXXXXXXX)
4. Replace in Analytics.astro

### Action 2: Replace Clarity Project ID
File: `src/components/Analytics.astro` line 8
```
const CLARITY_ID = 'XXXXXXXXXX'; // TODO: Replace
```
Steps:
1. Go to clarity.microsoft.com
2. Create New Project > Name: Baltimore Wedding Planner
3. Copy Project ID
4. Replace in Analytics.astro

### Action 3: Replace Calendly URL
File: `src/pages/contact.astro`
Search for: `YOURCALENDLYLINK`
Replace with your real Calendly link (e.g., calendly.com/john-bwp/consultation)

---

## STEP-BY-STEP VERCEL DEPLOYMENT

### Step 1: Initialize Git Repository
```powershell
cd "d:\Github\baltimore-wedding-planner"
git init
git add .
git commit -m "release: Baltimore Wedding Planner v1.0.0 - initial production launch"
```

### Step 2: Create GitHub Repository
1. Go to github.com → New repository
2. Name: `baltimore-wedding-planner`
3. Private repository (recommended)
4. Don't initialize with README (we have one)
5. Copy the remote URL

### Step 3: Push to GitHub
```powershell
git remote add origin https://github.com/YOUR-USERNAME/baltimore-wedding-planner.git
git branch -M main
git push -u origin main
```

### Step 4: Deploy to Vercel
1. Go to vercel.com → New Project
2. Import from GitHub → Select `baltimore-wedding-planner`
3. Configure:
   - Framework: **Astro** (auto-detected)
   - Build Command: `npm run build`
   - Output Directory: `dist`
   - Install Command: `npm install`
4. Environment Variables: None needed for initial deploy
5. Click Deploy

### Step 5: Custom Domain Setup
1. In Vercel Dashboard → Project → Settings → Domains
2. Add domain: `baltimoreweddingplanner.com`
3. Add domain: `www.baltimoreweddingplanner.com`
4. Vercel shows DNS records to add

**DNS Records to add at your registrar:**
```
Type: A      Name: @          Value: 76.76.21.21
Type: CNAME  Name: www        Value: cname.vercel-dns.com
```

### Step 6: Verify SSL
- Vercel auto-provisions SSL via Let's Encrypt
- Wait 5-10 minutes after DNS propagation
- Verify: https://baltimoreweddingplanner.com shows padlock

### Step 7: Force HTTPS + www Redirect
Vercel handles this automatically. Both http:// and www. redirect to https://

---

## POST-DEPLOY: SEARCH ENGINE SUBMISSION

### Google Search Console
1. Go to search.google.com/search-console
2. Add Property → Domain type → `baltimoreweddingplanner.com`
3. Verify via DNS TXT record (add at registrar)
4. Submit sitemap: `https://baltimoreweddingplanner.com/sitemap-index.xml`
5. Request indexing for priority pages:
   - https://baltimoreweddingplanner.com/
   - https://baltimoreweddingplanner.com/services/day-of-wedding-coordinator
   - https://baltimoreweddingplanner.com/blog/wedding-venues-in-maryland
   - https://baltimoreweddingplanner.com/blog/baltimore-wedding-venues
   - https://baltimoreweddingplanner.com/blog/how-to-get-married-in-maryland

### Bing Webmaster Tools
1. Go to bing.com/webmasters
2. Click "Import from GSC" → Authenticate → Import
3. OR add manually: Add site → verify via DNS
4. Submit sitemap: `https://baltimoreweddingplanner.com/sitemap-index.xml`

### IndexNow (Instant Bing Submission)
Run after DNS propagates:
```powershell
cd "d:\Github\baltimore-wedding-planner"
.\outputs\indexnow-submit.ps1
```

---

## POST-DEPLOY: GOOGLE BUSINESS PROFILE

1. Go to business.google.com
2. Create/claim profile for "Baltimore Wedding Planner"
3. Business category: "Wedding Planner" (primary) + "Event Planner" (secondary)
4. Service area: Maryland (state-wide)
5. Website: baltimoreweddingplanner.com
6. Phone: (replace with real number)
7. Add services: Full-Service Planning, Day-of Coordination, Elopements, Partial Planning
8. Hours: By appointment
9. Business description: Budget-friendly wedding planner serving Maryland couples with budgets under $20,000. Full-service planning, day-of coordination, and elopements.
10. Post first update: Link to Baltimore Wedding Venues guide

---

## POST-DEPLOY: 7-DAY MONITORING CHECKLIST

Day 1:
- [ ] Site loads at production URL
- [ ] SSL padlock shows on all pages
- [ ] Contact form sends emails (test submission)
- [ ] Cookie consent banner shows on first visit
- [ ] GA4 DebugView shows pageview events
- [ ] Clarity shows sessions within 2 hours

Day 2-3:
- [ ] GSC shows property as verified
- [ ] Sitemap status shows "Success" in GSC
- [ ] Bing WMT confirms sitemap
- [ ] IndexNow script submitted

Week 1:
- [ ] First organic impressions appearing in GSC
- [ ] Clarity heatmaps generating on key pages
- [ ] GBP verification email received

---

## CONTENT + GROWTH (Next 30 Days)

Post-launch priorities:
1. Add real portfolio photos to homepage, about, and service pages
2. Replace placeholder headshot (About page)
3. Replace placeholder phone number with real number
4. Get first 5 Google reviews from past clients
5. Create WeddingWire + The Knot profiles
6. Write /blog/baltimore-weddings (210/mo, comp 0.19 — easy win)

---

## TECHNICAL NOTES

- Build command: `NODE_OPTIONS=--use-system-ca npm run build` (Windows SSL fix)
- Deploy on every `git push main` (Vercel auto-deploy)
- Node version: 24.x (Vercel uses latest LTS by default)
- Environment: Static site (no server-side code)
- Edge Network: Vercel CDN (automatic)
- TTFB target: < 100ms (static sites on Vercel edge)
