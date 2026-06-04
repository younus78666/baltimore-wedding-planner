# Project Brief — Baltimore Wedding Planner
**Generated:** 2026-06-04  
**Version:** 1.1  
**Status:** Confirmed — Ready for Phase 1.2

---

## 1. Executive Summary

A new, SEO-first wedding planner website targeting the Baltimore, Maryland market. The site will serve budget-conscious couples (weddings under $20K) across all of Maryland. Primary objective: rank #1 for "baltimore wedding planner" and related terms through topical authority, fast performance, and strong local schema. Platform: Astro (static, fast, SEO-optimized). Design: modern and minimal — clean white space, sans-serif typography, muted neutrals.

---

## 2. Business Profile

| Field | Value |
|---|---|
| Business Name | **Baltimore Wedding Planner** |
| Planner Name | **John** |
| Domain | **baltimoreweddingplanner.com** |
| Slug | `baltimore-wedding-planner` |
| Business Type | Wedding Planner — Local Service Business |
| Location | Baltimore, Maryland (serves all of MD) |
| Target Market | Budget-friendly couples, weddings under $20K |
| Revenue Model | Service fees: flat-rate or % of wedding budget |
| Decision Maker | John |

### Services Offered
1. **Full-Service Planning** — end-to-end from engagement to reception
2. **Day-of Coordination** — coordinator present on wedding day only
3. **Partial Planning** — help with specific phases or tasks
4. **Elopements & Micro-Weddings** — intimate ceremonies under 30 guests

---

## 3. Site Type Classification

**Type:** Local Business (Wedding Planner)  
**Justification:** A service-area business generating revenue from booked consult calls and signed contracts. Needs LocalBusiness + WeddingService schema, service area markup, Google Business Profile integration, and city/service landing pages. Not a portfolio or editorial site — the primary CTA is always "Book a Consultation."

---

## 4. Target Audience & Market

### Primary Audience
- Engaged couples in Baltimore / Maryland
- Budget-conscious — total wedding budget under $20K
- Age: 24–35, primarily female decision-makers
- Using Google to find local planners
- Looking for trust signals: reviews, real photos, transparent pricing

### Secondary Audience
- Couples planning elopements or micro-weddings
- Couples outside Baltimore considering a Maryland destination wedding

### Market Context
- Baltimore is a mid-size metro with ~5M people in the greater MSA
- Budget wedding planning is underserved vs. luxury market
- "Affordable wedding planner baltimore" and related KWs have low competition

---

## 5. Goals & KPIs

| Goal | KPI | Timeline |
|---|---|---|
| Rank #1 for primary KW | Position 1–3 for "baltimore wedding planner" | Month 6 |
| Generate consultation bookings | 15+ qualified consult inquiries/month | Month 3 |
| Topical authority | Top 5 for 30+ wedding-related KWs in MD | Month 6 |
| Technical performance | Lighthouse 95+ on all Core Web Vitals | Launch |
| Local pack presence | Appear in Google Maps 3-pack | Month 4 |

---

## 6. Competitive Analysis

### Competitor Research (to be confirmed via KE data agent)

| Competitor | URL | Estimated Strength | Weakness to Exploit |
|---|---|---|---|
| Erin McLean Events | erinmcleanevents.com | High — strong portfolio | Targets luxury only, ignores budget market |
| Strathmore Events | strathmoreevents.com | Medium — good local SEO | Thin content, few service landing pages |
| The Bailey Experience | thebaileyexperience.com | Medium | Limited topical content |

### Our Positioning Edge
- Only planner with transparent pricing for budget weddings
- Serving ALL of Maryland (not just Baltimore city)
- Content strategy: educational blog targeting engaged couples early in research phase
- Elopement/micro-wedding service targets growing trend underserved by large planners

---

## 7. SEO Strategy

### Primary Keyword
`baltimore wedding planner` (est. 1,000–2,400 searches/month)

### Secondary Keywords (to validate with ke-data-agent)
- `wedding planner maryland`
- `affordable wedding planner baltimore`
- `day of coordinator baltimore`
- `wedding coordinator baltimore md`
- `elopement planner maryland`
- `micro wedding planner baltimore`
- `wedding planning packages baltimore`
- `budget wedding planner maryland`

### Topical Authority Plan
The site needs 3 content clusters:
1. **Planning Services** — service pages per offering type
2. **Locations** — venue guides and city landing pages across MD
3. **Budget Guides** — educational content for budget-conscious couples

### Schema Types Required
- `LocalBusiness` + `ProfessionalService`
- `WeddingService` (custom type)
- `FAQPage` on service pages
- `BreadcrumbList`
- `Review` / `AggregateRating`
- `Person` (planner bio page)

---

## 8. Technical Requirements

| Requirement | Decision |
|---|---|
| Platform | **Astro** (static, Lighthouse-optimized, Vercel deploy) |
| Hosting | Vercel (free tier sufficient at launch) |
| CMS | Markdown files in repo (or Contentlayer) |
| Analytics | GA4 + Microsoft Clarity (heatmaps) |
| Forms | React Hook Form + Resend / EmailJS (no server) |
| Booking | Calendly embed for consultation scheduling |
| Maps | Google Maps embed for service area |
| Images | WebP/AVIF via Astro Image integration |
| SEO | astro-seo + custom schema JSON-LD components |

### Integrations Priority
1. Calendly (consult booking) — **must-have at launch**
2. Google Analytics (GA4) — **must-have at launch**
3. Contact form with email notification — **must-have at launch**
4. Google Business Profile — set up in parallel

---

## 9. Design Direction

### Mood
**Modern & Minimal** — Clean, airy, sophisticated without being cold.

### Visual Language
- **Colors:** White (#FFFFFF) base, warm off-white (#FAF9F7), charcoal (#1C1C1C) text, single accent — dusty rose (#C89B94) or sage green (#8FAF98)
- **Typography:** Sans-serif — Inter or DM Sans for body; Plus Jakarta Sans or Cormorant Garamond (mixed) for headings
- **Photography:** Real wedding photos — candid moments, light-filled venues, detail shots
- **Layout:** Generous white space, asymmetric grids, large imagery blocks
- **Feel:** Like a high-end brand that happens to serve budget clients — accessibility without sacrificing elegance

### References to Emulate
- Junebug Weddings (editorial quality)
- Joy.com (clean UX)
- Riley & Grey (minimal luxury aesthetic)

---

## 10. Content Plan

### Pages at Launch (Minimum Viable Site)
1. Homepage (hero, services overview, testimonials, CTA)
2. About / Meet the Planner
3. Services (parent page)
   - Full-Service Planning
   - Day-of Coordination
   - Partial Planning
   - Elopements & Micro-Weddings
4. Portfolio / Gallery
5. Blog (index + 3 seed articles)
6. Contact + Booking
7. FAQ

### Seed Blog Articles (SEO-targeted)
1. "How Much Does a Wedding Planner Cost in Baltimore?" (informational, high intent)
2. "The Best Budget Wedding Venues in Baltimore, Maryland" (local SEO)
3. "Elopement Guide: How to Elope in Maryland in 2026"

### Content Ownership
- Service pages: Written by Claude (UC v6.4)
- Blog: Written by Claude (UC v6.4) + AI humanizer
- About page: Needs planner bio and photos from client

---

## 11. Project Scope & Timeline

### 2-Week Fast Track (ASAP goal)

| Week | Milestone |
|---|---|
| Week 1 — Day 1–2 | Keyword research (ke-data-agent) + topical map |
| Week 1 — Day 3–4 | Astro site scaffold + design system + homepage |
| Week 1 — Day 5–7 | All service pages (UC v6.4) + schema |
| Week 2 — Day 1–3 | Blog (3 articles) + About + Contact + FAQ |
| Week 2 — Day 4–5 | SEO audit + Lighthouse fixes + responsive QA |
| Week 2 — Day 6–7 | Launch on Vercel + GSC + GBP submission |

### Decision Maker
TBD — confirm who approves pages before publishing.

---

## 12. Budget & Post-Launch

### Build Budget
- Platform/hosting: $0 (Astro + Vercel free tier)
- Design: Included in Claude build
- Domain: ~$12/year (recommend `baltimoreweddingplanner.com` or branded name)
- Calendly: Free tier sufficient

### Post-Launch Plan
- Monthly: Publish 2 blog articles via UC v6.4
- Quarterly: seo-audit + auto-fixer cycle
- Ongoing: Google Business Profile review responses
- 6-month: Add city landing pages (Annapolis, Rockville, Columbia, Frederick)
