# Skill Pipeline v5 — Baltimore Wedding Planner
# Rebuilt against ASTRO6-MEGA-BUILD-v5.0 (12 Phases, 120+ Sub-Phases)
# Updated: 2026-06-04

---

## SKILLS AVAILABLE (v5 Install — 35 Skills)

### NEW in v5 (just installed)
- `caveman` — compressed token mode
- `niche-empire-hunter` — replaces niche-empire-builder
- `prompt-enhancer` — converts casual requests to full Claude Code prompts
- `younus-upwork-proposals` — Upwork proposal generator

### DEPRECATED (remove from active use)
- ~~uc-v62-content-writer~~ → use uc-v64-content-writer
- ~~web-master-agent~~ → use web-master-agent-v2
- ~~seo-master-agent~~ → use seo-master-agent-v2
- ~~niche-empire-builder~~ → use niche-empire-hunter
- ~~auto-fixer~~ → use auto-fixer-v2

---

## PHASE STATUS OVERVIEW

| Phase | Name | v5 Sub-Phases | % Done | Status |
|-------|------|---------------|--------|--------|
| 1 | Competitor Intelligence | 8 | 40% | ⚠️ Partial |
| 2 | Keywords + Gap | 7 | 85% | ⚠️ Partial |
| 3 | Micro-Niche Discovery | 5 | 0% | ❌ NOT STARTED |
| 4 | Topical Map + Architecture | 10 | 60% | ⚠️ Partial |
| 5 | Content Writing (UC v6.4) | 10 | 0% | ❌ NOT STARTED |
| 6 | AI Humanizer | 5 | 0% | ❌ NOT STARTED |
| 7 | Design (Brief-First) | 18 | 65% | ⚠️ Partial |
| 8 | Build (Astro 6) | 10 | 80% | ⚠️ Partial |
| 9 | Technical + On-Page SEO | 15 | 0% | ❌ NOT STARTED |
| 10 | Legal + Analytics + Indexing | 8 | 0% | ❌ NOT STARTED |
| 11 | Pre-Launch + Deploy | 11 | 0% | ❌ NOT STARTED |
| 12 | Post-Launch + Growth | 11 | 0% | ❌ NOT STARTED |

**Overall: 24% complete**

---

## PHASE 1 — COMPETITOR INTELLIGENCE
**Skill:** `competitor-intelligence`

| Sub-Phase | Description | Status | Skill |
|-----------|-------------|--------|-------|
| 1.1 | Plan — 5 competitors identified | ✅ | Manual |
| 1.2 | Traffic — KE domain metrics × 5 | ✅ | ke-data-agent |
| 1.3 | Keywords — KE domain keywords × 3-5 | ✅ | ke-data-agent |
| 1.4 | Pages — KE URL keywords (top pages) | ❌ | ke-data-agent |
| 1.5 | Backlinks — KE domain backlinks × 3 | ❌ | ke-data-agent |
| 1.6 | SERP Analysis — top 10 for main keywords | ⚠️ basic | Manual |
| 1.7 | 8-Dimension Audit | ❌ | competitor-intelligence |
| 1.8 | Validate → save phases/phase-01/ | ❌ | Manual |

**Competitors:** Nouvelle Weddings, Blush by Tami B, RCC Weddings, Phoriah Events, Satin & Sage
**Output needed:** phases/phase-01-competitors/*.md

---

## PHASE 2 — KEYWORDS + GAP ANALYSIS
**Skill:** `ke-data-agent`

| Sub-Phase | Description | Status |
|-----------|-------------|--------|
| 2.1 | 20-30 seed keywords defined | ✅ |
| 2.2 | KE volume on seeds | ✅ |
| 2.3 | Related + PASF expansion × 4 seeds | ✅ |
| 2.4 | KE volume on expanded keywords | ✅ |
| 2.5 | Gap analysis: competitor KWs vs ours | ❌ |
| 2.6 | City keywords: [service]+[city] combos | ❌ |
| 2.7 | Cluster → 1 cluster = 1 page | ✅ (in topical map) |

**Missing:** Pull competitor domain keywords for gap analysis
```
ke-data-agent: compare keywords from nouvellweddings.com vs baltimoreweddingplanner.com
Mark content gaps: keywords competitors rank for that we DON'T have pages for
```

---

## PHASE 3 — MICRO-NICHE DISCOVERY ❌ COMPLETELY MISSING
**Skill:** Manual + `ke-data-agent`

This phase was skipped entirely. Required before Phase 5 content writing.

| Sub-Phase | Description | What to Do |
|-----------|-------------|-----------|
| 3.1 | Break each service into 5-8 sub-services | Map micro-niches |
| 3.2 | Competition check per sub-service+city | KE volume + SERP scan |
| 3.3 | Hierarchy: Pillar → Hub → Micro → Blog | Create 4-tier map |
| 3.4 | Build order: micros FIRST, homepage LAST | Update publication calendar |
| 3.5 | Validate → save → update memory | — |

**Example micro-niches to discover for Baltimore Wedding Planner:**
- Service: Day-of Coordination
  - Micro: "day of coordinator for outdoor weddings maryland"
  - Micro: "day of coordinator baltimore jewish wedding"
  - Micro: "day of coordinator annapolis naval academy wedding"
  - Micro: "day of coordinator for small weddings under 50"
  - Micro: "day of coordinator for backyard wedding maryland"

- Service: Elopement Planning
  - Micro: "elopement planner annapolis waterfront"
  - Micro: "micro wedding planner eastern shore maryland"
  - Micro: "maryland elopement photographer planner package"

**Save to:** phases/phase-03-microniche/

---

## PHASE 4 — TOPICAL MAP + ARCHITECTURE
**Skill:** `topical-map-builder`

| Sub-Phase | Description | Status |
|-----------|-------------|--------|
| 4.0 | Data Intake: GSC, existing KWs, GA4 | ❌ (no GSC yet — new site) |
| 4.1 | Central Entity + Koray semantic network | ✅ |
| 4.2 | Page list with URL slugs | ✅ (31 pages) |
| 4.3 | Intent classification per page | ❌ MISSING |
| 4.4 | Internal linking map (max 3 clicks) | ✅ |
| **4.5** | **Deep Content Briefs per page** | ❌ **BIGGEST GAP** |
| 4.6 | Blog Content Briefs | ❌ MISSING |
| 4.7 | Location Page Briefs | ❌ MISSING |
| 4.8 | Publication calendar | ✅ |
| 4.9 | GSC cross-reference | ❌ (no GSC yet) |
| 4.10 | Validate all briefs complete | ❌ |

**Phase 4.5 CONTENT BRIEFS — The Main Missing Piece:**
3 full briefs written (Day-of Coordinator, Maryland Venues, Baltimore Venues).
28 remaining briefs needed. See: phases/phase-04-topicalmap/briefs/CONTENT-BRIEFS-MASTER.md

**Intent Classification needed for each page:**
- SERP check: web_search "[keyword]" → what type ranks? → set our intent to match + fill gap
- Save: phases/phase-04-topicalmap/intent-classification.md

---

## PHASE 5 — CONTENT WRITING ❌ NOT STARTED
**Skill:** `uc-v64-content-writer`

**Correct order (v5 rule: micro-niches FIRST, homepage LAST):**

| Priority | Page | Target KW | Volume | Brief |
|----------|------|-----------|--------|-------|
| 1st | Day-of Coordinator | day of wedding coordinator | 8,100 | ✅ Written |
| 2nd | Maryland Venues Guide | wedding venues in maryland | 5,400 | ✅ Written |
| 3rd | Baltimore Venues Guide | baltimore wedding venues | 2,900 | ✅ Written |
| 4th | Full-Service Planning | wedding planner maryland | 260 | ❌ Brief needed |
| 5th | Annapolis Venues | annapolis wedding venues | 1,300 | ❌ Brief needed |
| 6th | Elopement Planning | elopement planner maryland | trend | ❌ Brief needed |
| 7th | Partial Planning | partial wedding planner | — | ❌ Brief needed |
| 8th | Annapolis City Page | annapolis wedding planner | 90 | ❌ Brief needed |
| 9th | Wedding Planner Cost | wedding planner cost baltimore | 10 | ❌ Brief needed |
| 10th | How to Elope in MD | how to elope in maryland | est. 200+ | ❌ Brief needed |
| 11th | Planning Checklist | wedding planning checklist | est. 500+ | ❌ Brief needed |
| 12th | FAQ Hub | how much does a wedding planner cost | 10 | ❌ Brief needed |
| 13th | About John | [brand] | — | ❌ Brief needed |
| 14th | Packages & Pricing | [commercial] | — | ❌ Brief needed |
| 15th | Contact/Booking | [transactional] | — | ❌ Brief needed |
| 16-20 | Other city pages (5) | [city] wedding planner | 0-50 | ❌ Brief needed |
| 21-31 | Remaining blog posts | various | varies | ❌ Brief needed |
| LAST | Homepage | baltimore wedding planner | 260+local | ❌ Brief needed |

**For EACH page:**
```
/uc-v64-content-writer
Input: Content brief from phases/phase-04-topicalmap/briefs/[slug]-brief.md
Output: Save to phases/phase-05-content/pages/[slug].md
Then: /ai-humanizer on the output
Then: /site-builder to inject into Astro
```

---

## PHASE 6 — AI HUMANIZER ❌ NOT STARTED
**Skill:** `ai-humanizer`

Run AFTER every UC v6.4 content piece.

| Sub-Phase | Description |
|-----------|-------------|
| 6.1 | Calibrate: niche voice for wedding planning (warm, professional, relatable) |
| 6.2 | Scan: 9-vector scan per page |
| 6.3 | Fix: 207 banned phrases, em dashes, Claude patterns |
| 6.4 | Grammar recheck post-humanization |
| 6.5 | Verify: 80+ score all pages, save report |

**Key rules for wedding planner content:**
- Zero em dashes (memory rule)
- Contractions minimum 1 per paragraph
- No "Discover", "Navigate", "Unleash", "Comprehensive", "Delve"
- Warm but professional tone (not formal, not casual)

---

## PHASE 7 — DESIGN ⚠️ PARTIAL
**Skills:** `design-system-generator`, `brand-wireframe-studio`

| Sub-Phase | Description | Status |
|-----------|-------------|--------|
| 7.0 | Design intake (assets, references, photos) | ⚠️ Partial |
| 7.1 | Brand identity + archetype | ✅ |
| 7.2 | Design tokens (globals.css + tailwind.config) | ✅ |
| 7.3 | Favicon + OG image | ⚠️ Favicon ✅, OG image ❌ |
| **7.3B** | **AI image prompts** (for all sections) | ❌ MISSING |
| 7.4 | Homepage design brief | ❌ |
| 7.5 | Service page brief | ❌ |
| 7.6 | Location page brief | ❌ |
| 7.7 | Blog post brief | ❌ |
| 7.8 | Contact page brief | ❌ |
| 7.9 | About page brief | ❌ |
| 7.10 | Local elements brief (WhatsApp, popup, cookie) | ❌ |
| 7.11 | Header + Footer brief | ❌ |
| 7.12 | Error pages brief | ❌ |
| 7.13 | Build previews → user approval | ❌ |
| 7.14 | Validate all templates | ❌ |

**AI Image Prompts needed (7.3B) — save to phases/phase-07-design/image-prompts.md:**
- Hero image (John working with couple)
- Service card images (4)
- About page headshot (John placeholder)
- Blog post featured images (6+)
- Testimonial avatars (initials only — no AI faces)
- OG image 1200x630

---

## PHASE 8 — BUILD ⚠️ 80% DONE
**Skill:** `web-master-agent-v2`, `site-builder`

| Sub-Phase | Description | Status |
|-----------|-------------|--------|
| 8.1 | Astro init + integrations + git | ✅ |
| 8.2 | Global layout + header + footer + sticky CTA | ✅ |
| 8.3 | Homepage | ✅ |
| 8.4 | Service pages (4) | ✅ |
| 8.5 | Location pages (5 + index) | ✅ |
| 8.6 | Blog posts (6 + index) | ✅ (placeholder content) |
| 8.7 | Remaining pages (about, contact, faq, packages) | ✅ |
| **8.8** | **Local elements (WhatsApp, exit popup, cookie consent)** | ❌ MISSING |
| 8.9 | Verify all internal links match Phase 4.4 map | ❌ |
| 8.10 | Validate build (all renders, links, forms) | ❌ |

**Missing components from Phase 8.8:**
1. WhatsApp floating button (bottom-right, wa.me link, no SDK)
2. Exit intent popup (once/session, localStorage, name+email+phone form)
3. Cookie consent bar (Reject + Accept, Consent Mode v2 integration)
4. Sticky mobile CTA bar (phone + "Book Consultation" button, bottom, mobile only)

---

## PHASE 9 — SEO AUDIT ❌ NOT STARTED
**Skills:** `seo-audit`, `schema-architect`, `responsive-qa-auditor`, `accessibility-auditor`, `performance-optimizer`

Run AFTER Phase 5 content is injected into the site.

| Check | Tool | Target |
|-------|------|--------|
| Meta tags (title <60, desc 140-160) | seo-audit | All 24 pages |
| Headings (1 H1, H2 questions, no skips) | seo-audit | All pages |
| Content quality (keyword density, word count) | seo-audit | All pages |
| Image SEO (alt, WebP, filenames) | seo-audit | All pages |
| Schema validation | schema-architect | All pages |
| Performance (LCP <2.0s, CLS=0, INP <100ms) | performance-optimizer | Live site |
| Mobile (5 breakpoints, 44px targets) | responsive-qa-auditor | All pages |
| Security headers | seo-audit | — |
| Accessibility WCAG 2.1 AA | accessibility-auditor | All pages |
| Social OG/Twitter | seo-audit | All pages |

---

## PHASE 10 — LEGAL + ANALYTICS ❌ NOT STARTED
**Skills:** `legal-pages-generator`, `analytics-integrator`, `indexing-manager`, `local-seo-gbp`

| Task | Skill | Priority |
|------|-------|----------|
| Privacy Policy + Terms | legal-pages-generator | HIGH |
| Cookie Policy + Banner (Reject/Accept) | legal-pages-generator | HIGH |
| GA4 + GTM + Consent Mode v2 | analytics-integrator | HIGH |
| Microsoft Clarity (heatmaps) | analytics-integrator | MEDIUM |
| Conversion events (form, phone, CTA, scroll) | analytics-integrator | HIGH |
| llms.txt | indexing-manager | MEDIUM |
| IndexNow API + sitemap → GSC + Bing | indexing-manager | HIGH |
| GBP 14-section optimization | local-seo-gbp | HIGH |
| NAP consistency + 50+ citations | local-seo-gbp | MEDIUM |

---

## PHASE 11 — PRE-LAUNCH ❌ NOT STARTED
**Skills:** `pre-launch-checklist`, `auto-fixer-v2`

100-point checklist across 7 gates must pass before Vercel deploy.

**Client deliverables needed at launch (Phase 11.11):**
- [ ] John's real phone number
- [ ] John's real email  
- [ ] Calendly link for booking
- [ ] Real headshot / team photo
- [ ] 15+ portfolio wedding photos
- [ ] Existing testimonials/reviews (if any)
- [ ] Domain registrar credentials for Vercel connect
- [ ] Business email creation (john@baltimoreweddingplanner.com)

---

## PHASE 12 — POST-LAUNCH ❌ NOT STARTED
**Skills:** `post-launch-monitor`, `content-audit-refresher`, `seo-master-agent-v2`

| Timeframe | Action | Skill |
|-----------|--------|-------|
| Day 1-7 | Live inspection + GSC errors | Manual |
| Day 1-7 | UptimeRobot + GA4 event verify + Clarity | post-launch-monitor |
| Week 2-4 | Ranking baseline (top 20 KWs in GSC) | Manual |
| Week 2-4 | Blog posts 1-2 via UC v6.4 | uc-v64-content-writer |
| Month 2-3 | Ranking review + content refresh | content-audit-refresher |
| Month 6 | Full re-audit (Phase 9 rerun) | seo-audit + performance-optimizer |
| Month 7-9 | New location pages (3-5) | location-pages-agent |
| Year 1 | Annual report + Year 2 plan | seo-master-agent-v2 |

**12-month content calendar (Phase 12.11):**
- Wedding season: Jan-Apr peak planning searches
- Holiday engagements: Nov-Dec spike for "baltimore wedding planner"
- Spring/summer: venue searches peak (May-Aug)
- Blog cadence: 2 posts/month = 24 posts Year 1

---

## NEXT ACTIONS — PRIORITY ORDER

### Immediate (to unblock Phase 5)
1. **Phase 3 — Micro-niche**: Break each service into 5-8 sub-services, check KE competition
2. **Phase 4.3 — Intent Classification**: SERP check for each of 31 pages
3. **Phase 4.5 — Complete remaining 28 briefs** (3 done, 28 needed)

### Then Phase 5 (Content — 1 page at a time)
```
For each page:
1. Read brief from phases/phase-04-topicalmap/briefs/[slug]-brief.md
2. /uc-v64-content-writer → write → save phases/phase-05-content/pages/[slug].md
3. /ai-humanizer → humanize → save phases/phase-06-humanizer/[slug].md
4. /site-builder → inject into Astro pages
```

### Parallel (can do while writing content)
- Phase 7.3B: Generate AI image prompts
- Phase 8.8: Add WhatsApp + popup + cookie consent
- Get client assets: photos, phone, Calendly link

### After all content written
- Phase 9: Full SEO audit → auto-fix
- Phase 10: Legal + analytics setup
- Phase 11: Pre-launch checklist → deploy
- Phase 12: Post-launch monitoring
```

---

## SKILL USAGE REFERENCE

| When you need to... | Use this skill |
|--------------------|----------------|
| More KE keyword data | `ke-data-agent` |
| Competitor deep audit | `competitor-intelligence` |
| Write page content | `uc-v64-content-writer` |
| Make content sound human | `ai-humanizer` |
| Add new pages to site | `site-builder` |
| Fix all SEO issues | `auto-fixer-v2` |
| Check meta/schema/content | `seo-audit` |
| Add schema JSON-LD | `schema-architect` |
| Mobile/responsive check | `responsive-qa-auditor` |
| Fix Core Web Vitals | `performance-optimizer` |
| WCAG accessibility | `accessibility-auditor` |
| Privacy/Terms/Cookie | `legal-pages-generator` |
| GA4 + GTM setup | `analytics-integrator` |
| GSC + IndexNow submit | `indexing-manager` |
| GBP optimization | `local-seo-gbp` |
| 100-point launch gate | `pre-launch-checklist` |
| Uptime + CWV monitoring | `post-launch-monitor` |
| Bulk city pages | `location-pages-agent` |
| Write Upwork proposals | `younus-upwork-proposals` |
| Find new niches | `niche-empire-hunter` |
| Full project orchestration | `seo-master-agent-v2` |
| Compress token usage | `caveman` |
| Better prompts for Claude | `prompt-enhancer` |
