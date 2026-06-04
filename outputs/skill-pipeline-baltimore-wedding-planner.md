# Skill Pipeline — Baltimore Wedding Planner
**Generated:** 2026-06-04  
**Build Mode:** Fast Track (2-week ASAP)  
**Platform:** Astro + Vercel  

---

## Pipeline Overview

```
PHASE A — Research & Strategy      (Day 1–2)
PHASE B — Site Scaffold            (Day 3–4)
PHASE C — Content Creation         (Day 5–10)
PHASE D — Quality Gates            (Day 11–12)
PHASE E — Launch                   (Day 13–14)
PHASE F — Ongoing (post-launch)
```

---

## PHASE A — Research & Strategy

### A1. ke-data-agent
**Skill:** `ke-data-agent`  
**When:** Day 1  
**Input:** Seed keywords from project brief  
**Run this prompt:**
```
Pull KE data for:
- baltimore wedding planner
- wedding planner maryland
- affordable wedding planner baltimore
- day of coordinator baltimore
- elopement planner maryland
- micro wedding planner baltimore
- budget wedding planner maryland
- wedding coordinator baltimore md
Include: volume, CPC, competition, PASF, related keywords
Domain analysis: erinmcleanevents.com, strathmoreevents.com
```
**Output:** Keyword XLSX with volume/CPC/competition data  
**Feeds into:** A2, C1–C5

---

### A2. topical-map-builder
**Skill:** `topical-map-builder`  
**When:** Day 2  
**Input:** KE data output from A1  
**Run this prompt:**
```
Build a topical map for a Baltimore, MD wedding planner website.
Site type: Local Business. Budget tier: under $20K weddings.
Services: full-service, day-of coordination, partial planning, elopements.
Service area: All of Maryland.
Primary KW: baltimore wedding planner
Use 23-step Koray framework. Include 3 content clusters:
1. Planning Services (service pages)
2. Maryland Locations (venue + city pages)
3. Budget Guides (educational content)
```
**Output:** Topical map DOCX + content architecture  
**Feeds into:** C1–C5 (content creation order)

---

## PHASE B — Site Scaffold

### B1. web-master-agent-v2
**Skill:** `web-master-agent-v2`  
**When:** Day 3–4  
**Input:** Project brief, design direction (modern/minimal, dusty rose accent)  
**Run this prompt:**
```
Build an Astro wedding planner website for Baltimore, MD.
Business: Budget-friendly wedding planner serving all of Maryland.
Design: Modern & minimal. Colors: white base, charcoal text, dusty rose accent (#C89B94).
Typography: DM Sans body, Plus Jakarta Sans headings.
Build homepage FIRST with:
- Hero (headline + CTA "Book Free Consultation")
- Services overview (4 cards)
- About teaser
- Testimonials section
- Process/how it works (3 steps)
- Gallery preview
- FAQ preview
- Contact CTA
Use design-system-generator tokens. No hardcoded colors.
Platform: Astro 5 + Tailwind CSS + shadcn/ui components.
Deploy target: Vercel.
```
**Output:** Astro project scaffold with homepage  
**Feeds into:** B2, C content insertion

---

### B2. design-system-generator
**Skill:** `design-system-generator`  
**When:** During B1 (run in parallel or before)  
**Run this prompt:**
```
Generate a design system for a modern minimal wedding planner brand.
Base: white (#FFFFFF), off-white (#FAF9F7), charcoal (#1C1C1C)
Accent: dusty rose (#C89B94)
Secondary accent: sage green (#8FAF98)
Typography: DM Sans (body), Plus Jakarta Sans (headings)
Radius: subtle (4px base)
Spacing: generous (8px grid)
Output: tailwind.config.js + globals.css CSS variables + dark mode variants
```

---

## PHASE C — Content Creation

Run all content through **UC v6.4** then **ai-humanizer** before inserting.

### C1. Homepage Content
**Skill:** `uc-v64-content-writer`  
**Primary KW:** `baltimore wedding planner`  
**Intent:** Commercial + navigational

### C2. Full-Service Wedding Planning Page
**Skill:** `uc-v64-content-writer`  
**Primary KW:** `full service wedding planner baltimore`  
**Intent:** Commercial

### C3. Day-of Coordination Page
**Skill:** `uc-v64-content-writer`  
**Primary KW:** `day of wedding coordinator baltimore`  
**Intent:** Commercial

### C4. Elopement Planning Page
**Skill:** `uc-v64-content-writer`  
**Primary KW:** `elopement planner maryland`  
**Intent:** Commercial + informational

### C5. Blog Article 1 (seed)
**Skill:** `uc-v64-content-writer`  
**Primary KW:** `how much does a wedding planner cost in baltimore`  
**Intent:** Informational (high buying intent)

### C6. Blog Article 2 (seed)
**Skill:** `uc-v64-content-writer`  
**Primary KW:** `budget wedding venues baltimore maryland`  
**Intent:** Informational + local SEO

### C7. Schema — All Pages
**Skill:** `schema-architect`  
**Run after content:** Yes  
**Schema types needed:**
- `LocalBusiness` + `ProfessionalService` (homepage + about)
- `WeddingService` (service pages)
- `FAQPage` (service pages + FAQ page)
- `BreadcrumbList` (all pages)
- `BlogPosting` (blog articles)
- `Person` (about page)
- `AggregateRating` (once reviews collected)

---

## PHASE D — Quality Gates

All gates must pass before launch.

### D1. seo-audit
**Skill:** `seo-audit`  
**Depth:** Standard (6-report)  
**Check:** Title tags, meta descriptions (50–60 / 150–158 chars), canonical, schema validation, internal linking, alt text

### D2. responsive-qa-auditor
**Skill:** `responsive-qa-auditor`  
**Breakpoints:** 320, 375, 768, 1024, 1440px  
**Focus:** CTA button tap targets, gallery layout, form usability on mobile

### D3. performance-optimizer
**Skill:** `performance-optimizer`  
**Targets:** LCP < 2.5s, INP < 200ms, CLS < 0.1, Lighthouse 95+  
**Focus:** WebP images, font preload, no render-blocking JS

### D4. auto-fixer
**Skill:** `auto-fixer-v2`  
**Input:** Issues from D1–D3  
**Run:** After all audits complete

### D5. pre-launch-checklist
**Skill:** `pre-launch-checklist`  
**Gate:** Must pass 100/100 before Vercel deploy to production

---

## PHASE E — Launch

### E1. Vercel Deploy
**Manual step:**
```bash
vercel --prod
```
Set environment variables: GA4 ID, Calendly URL, contact form API key

### E2. indexing-manager
**Skill:** `indexing-manager`  
**Run:** Day of launch  
**Tasks:**
- Submit sitemap.xml to Google Search Console
- Submit to Bing Webmaster via IndexNow
- Create llms.txt for AI crawler access
- Request indexing for 7 priority pages via GSC URL Inspection

### E3. analytics-integrator
**Skill:** `analytics-integrator`  
**Run:** Same day as launch  
**Stack:** GA4 + GTM + Microsoft Clarity + Consent Mode v2

### E4. Google Business Profile
**Manual step** (no skill available):
1. Claim/create GBP listing for the business
2. Category: "Wedding Planner" + "Event Planner"
3. Add all services, photos, hours
4. Link to website
5. Set up review request workflow

### E5. legal-pages-generator
**Skill:** `legal-pages-generator`  
**Pages needed:** Privacy Policy, Terms of Service, Cookie Consent banner

---

## PHASE F — Ongoing (Post-Launch)

### Monthly
- **2 blog articles** via `uc-v64-content-writer` + `ai-humanizer`
- Publish via `site-builder`
- Submit new URLs via IndexNow (`indexing-manager`)

### Quarterly
- `seo-audit` (Standard depth) → `auto-fixer-v2`
- GBP photo refresh + post publishing
- Google review follow-up campaign

### Month 3–4 Expansion
- Add Maryland city landing pages:
  - Annapolis wedding planner
  - Columbia MD wedding planner
  - Rockville wedding planner
  - Frederick MD wedding planner
  - Silver Spring wedding planner
- Use `location-pages-agent` for bulk generation

### Month 6
- `competitor-intelligence` — re-audit top competitors
- `local-seo-gbp` — full GBP optimization cycle
- Evaluate adding pricing page + real testimonials with photos

---

## Skill Execution Order (Quick Reference)

```
Day 1:  ke-data-agent
Day 2:  topical-map-builder
Day 3:  design-system-generator → web-master-agent-v2 (homepage)
Day 4:  web-master-agent-v2 (remaining pages scaffold)
Day 5:  uc-v64 (homepage content) + uc-v64 (full-service page)
Day 6:  uc-v64 (day-of coord) + uc-v64 (elopements page)
Day 7:  uc-v64 (blog 1) + uc-v64 (blog 2) + ai-humanizer (all)
Day 8:  schema-architect (all pages)
Day 9:  site-builder (inject all content into Astro)
Day 10: legal-pages-generator
Day 11: seo-audit + responsive-qa-auditor
Day 12: performance-optimizer + auto-fixer-v2
Day 13: pre-launch-checklist (must pass) → Vercel prod deploy
Day 14: indexing-manager + analytics-integrator + GBP setup
```

---

## Open Items (Need from Client)

- [ ] Confirm business/brand name
- [ ] Confirm planner's real name and bio
- [ ] Provide headshots / portfolio photos (minimum 15 wedding photos)
- [ ] Confirm contact email and phone number
- [ ] Confirm which Calendly link to embed
- [ ] Confirm if existing reviews exist (Google, The Knot, WeddingWire)
- [ ] Confirm domain name to register
- [ ] Identify who is the approver for pages
