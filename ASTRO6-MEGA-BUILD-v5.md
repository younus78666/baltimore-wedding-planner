# ASTRO 6 LOCAL BUSINESS MEGA BUILD v5.0
## Template-First | 12 Phases | 120+ Sub-Phases | Git+Vercel | Memory Per Project

---

## WORKSPACE + MEMORY SYSTEM

### Folder Structure Per Project:
```
/workspace/
├── accountant-maryland/
│   ├── PROJECT-MEMORY.md         ← Agent reads FIRST every session
│   ├── build-state.json          ← Progress tracker
│   ├── phases/
│   │   ├── phase-01-competitors/*.md
│   │   ├── phase-02-keywords/*.md
│   │   ├── phase-03-microniche/*.md
│   │   ├── phase-04-topicalmap/*.md
│   │   ├── phase-05-content/pages/*.md
│   │   ├── phase-06-humanizer/*.md
│   │   ├── phase-07-design/*.md
│   │   ├── phase-08-build/*.md
│   │   ├── phase-09-seo/*.md
│   │   ├── phase-10-legal-analytics/*.md
│   │   ├── phase-11-prelaunch/*.md
│   │   └── phase-12-postlaunch/*.md
│   └── site/                     ← Astro 6 project (git tracked)
```

### PROJECT-MEMORY.md Template:
```markdown
# Project: [Business Name]
## Business: [name] | City: [city, state] | Phone: [real] | Address: [real]
## Status: Phase [X] Sub-Phase [X.Y] | Pages: [built]/[planned]
## Archetype: [selected] | Colors: [hex] | Fonts: [selected]
## Templates Approved: Homepage [A/B/C] | Service [A/B] | Location [A/B]
## Competitors: [domains] | Gaps: [count] | Micro-niches: [count]
## Decisions: [key decisions log]
## Issues: [issue → resolution log]
```

### Rules:
- Agent reads PROJECT-MEMORY.md FIRST every session
- Updates after EVERY sub-phase
- All outputs saved as .md in phases/ folder
- Everything local, ZERO cloud storage, ZERO security risk
- If session breaks: read memory, resume exactly

---

## PHASE 1: COMPETITOR INTELLIGENCE (8 Sub-Phases)

1.1 PLAN → identify 5 competitors (web_search + ask user)
1.2 TRAFFIC → KE:get_domain_traffic_metrics × 5 competitors
1.3 KEYWORDS → KE:get_domain_keywords(200) × 3-5 competitors
1.4 PAGES → KE:get_url_keywords + get_url_traffic_metrics (top pages)
1.5 BACKLINKS → KE:get_domain_backlinks(100) × 3 competitors
1.6 SERP ANALYSIS → web_search top 10 keywords, note SERP features (AIO, local pack, FAQ)
1.7 8-DIMENSION AUDIT → tech stack, content, SEO, backlinks, design, pricing, marketing, performance
1.8 VALIDATE → save phases/phase-01/*.md → update memory

---

## PHASE 2: KEYWORDS + GAP ANALYSIS (7 Sub-Phases)

2.1 PLAN → define 20-30 seed keywords
2.2 VOLUME → KE:get_keyword_data seeds
2.3 EXPAND → KE:get_related_keywords + get_pasf_keywords × 4 seeds
2.4 VOLUME EXPANDED → KE:get_keyword_data all expanded
2.5 GAP → competitor keywords vs ours → mark content gaps
2.6 CITY KEYWORDS → KE:get_keyword_data [service]+[city] combos
2.7 CLUSTER → group by SERP similarity → 1 cluster = 1 page → save → update memory

---

## PHASE 3: MICRO-NICHE DISCOVERY (5 Sub-Phases)

3.1 PLAN → break each service into 5-8 sub-services
3.2 COMPETITION CHECK → KE volume + SERP check per sub-service+city → score green/yellow/red
3.3 HIERARCHY → 4-tier map (Pillar → Hub → Micro → Blog)
3.4 BUILD ORDER → micro-niches FIRST, homepage LAST
3.5 VALIDATE → save → update memory

---

## PHASE 4: TOPICAL MAP + ARCHITECTURE (10 Sub-Phases)

### 4.0 DATA INTAKE (Ask BEFORE mapping)
```
Agent MUST ask:
□ "Do you have Google Search Console access? Export last 3 months queries."
□ "Do you have an existing keyword list? Share it."
□ "Do you have GA4 data? Top pages by traffic?"
□ "Any pages already ranking that we should protect?"
□ "Any specific keywords you WANT to rank for?"

IF GSC data available:
  → Import queries + clicks + impressions + position
  → Identify: already ranking (protect), declining (refresh), missing (create)
  → Cross-reference with Phase 2 keyword clusters

IF no GSC:
  → Proceed with Phase 2 keyword data only
  → Revisit at Phase 12 when GSC data accumulates
```

### 4.1 CENTRAL ENTITY + KORAY SEMANTIC NETWORK
```
Define:
- Central Entity: "[Business Type] in [City]"
- Source Context: Why this site deserves to rank (service depth, authority signals)
- EAV: Entity-Attribute-Value mapping for the business

Koray Semantic Optimization:
- Every entity on the site mapped with its FULL attribute set
- Entity relationships documented (service → location → customer → outcome)
- Contextual Hierarchy: which entities are parent, child, sibling
- SPO Triples: Subject-Predicate-Object for every key claim
  Example: "[Business Name] → provides → [Service] → in → [City]"
```

### 4.2 PAGE LIST with URL slugs from clusters + micro-niches

### 4.3 INTENT CLASSIFICATION PER PAGE (Ubersuggest + Competitor SERP)
```
For EACH page in the site architecture:

STEP 1: Classify intent using competitor SERP analysis
  → web_search "[target keyword]"
  → Check top 5 results: what TYPE of content ranks?
    - Informational: guides, how-to, educational → our page must be informational
    - Transactional: booking pages, pricing, CTAs → our page must be transactional  
    - Commercial: comparisons, reviews, "best" lists → our page must be commercial
    - Navigational: brand searches → our page must be brand-focused

STEP 2: Find the GAP per intent type
  → If competitors rank with informational content but missing depth 
    → WE add deeper informational content + FAQ + data
  → If competitors rank with transactional but weak trust signals
    → WE add stronger CTAs + testimonials + pricing transparency + schema
  → If competitors have NO commercial comparison content
    → WE create "[Service] vs [Alternative]" comparison pages (gap fill)
  → If competitors have informational but NO transactional
    → WE create dedicated booking/quote pages with transactional intent

STEP 3: Document per page
  → Primary intent: [informational / transactional / commercial]
  → Secondary intent: [if mixed]
  → Competitor gap: what they miss, we fill
  → Content angle: how our page will be DIFFERENT

SAVE: phases/phase-04/intent-classification.md
```

### 4.4 INTERNAL LINKING MAP (Koray contextual rules, no orphans, max 3 clicks)

### 4.5 CONTENT BRIEFS — DEEP (Per Page, Per Section)

**THIS is the core addition. Every page gets a DETAILED brief with NLP data.**

```markdown
# Content Brief: [Page Title]
# URL: /[slug]
# Target Keyword: [primary] | Volume: [N] | Intent: [type]
# Word Count: [Koray minimum for this page type]

## SEMANTIC OPTIMIZATION DATA

### NLP Entities (must appear naturally in content):
- Primary Entity: [e.g., "bookkeeping service"]
- Related Entities: [e.g., "QuickBooks", "general ledger", "reconciliation", "financial statements"]
- Entity Frequency: primary 5-8 times, related 2-3 times each

### N-grams (2-3 word phrases to include):
- [from keyword research: "monthly bookkeeping", "tax preparation", "small business accounting"]
- [from competitor content analysis: "financial reporting", "cash flow management"]
- [from PASF data: "bookkeeping cost", "CPA near me", "outsource bookkeeping"]

### Synonyms + Lexical Variations:
- bookkeeping → record-keeping, financial record management, book maintenance
- accountant → CPA, financial advisor, tax professional, bookkeeper
- small business → SMB, startup, LLC, S-Corp, sole proprietor
- [USE these variations naturally — never repeat the same term 5x in a row]

### LSI Keywords (Latent Semantic Indexing):
- [from competitor content TF-IDF analysis]
- [terms that co-occur with target keyword in top 10 results]

### Koray 9 Semantic Frames (MUST cover ALL 9):
1. Definition: What IS [this service]?
2. Category: What TYPE of service is this?
3. Attribute: What QUALITIES does it have?
4. Component: What PARTS make up this service?
5. Process: HOW does it work step by step?
6. Causation: WHY do you need this? What happens WITHOUT it?
7. Comparison: How does this COMPARE to alternatives?
8. Application: WHO uses this and WHEN?
9. Evaluation: How do you MEASURE quality/success?

### PPR Entity Classification:
- Purpose entities: [what the service achieves]
- Property entities: [characteristics of the service]
- Relationship entities: [how entities connect to each other]

## PAGE STRUCTURE

### Section 1: Hero
- H1: "[exact H1 with keyword]" (under 60 chars)
- Subheadline: [1 sentence, includes secondary keyword]
- CTA: "[transactional CTA text]"
- Trust bar: [specific stats]

### Section 2: Introduction (Hook + Context)
- First 100 words MUST contain primary keyword
- Start with: [stat / question / bold claim] (ENG.1 hook rule)
- Cover Frame 1 (Definition) + Frame 8 (Application)
- Word count: 150-200 words
- Internal link: → [related page]
- N-grams to include: [specific phrases]

### Section 3: [H2 — Question Format]
- H2: "How does [service] work in [city]?" (MUST be a question)
- First sentence: 40-word extractive answer (AEO rule)
- Cover Frame 5 (Process) 
- Include: numbered steps, specific details, tool names
- Word count: 200-300 words
- N-grams: [specific]
- Synonyms to use: [specific variations here, not same term]

### Section 4: [H2 — Question Format]
- H2: "Why do [city] businesses need [service]?"
- Cover Frame 6 (Causation) + Frame 7 (Comparison)
- Include: consequences of NOT having this service
- Statistics: [real numbers, sourced]
- Word count: 200-300 words

### Section 5: [H2 — Can be statement or question]
- H2: "[Service] Packages / Pricing / What's Included"
- Cover Frame 3 (Attribute) + Frame 4 (Component)
- Pricing transparency (if available): "[confirm with client]"
- Trust signals: guarantees, certifications
- CTA after this section
- Word count: 200-300 words

### Section 6: [H2 — Question Format]
- H2: "How do you choose the right [service] in [city]?"
- Cover Frame 9 (Evaluation)
- Buying guide format
- Internal link: → [about page] or [related service]
- Word count: 200-250 words

### Section 7: Testimonials
- 2-3 reviews relevant to THIS service
- Real names, star ratings, specific service mentioned

### Section 8: FAQ (5-7 questions)
- Q1: "How much does [service] cost in [city]?" (Frame 3+9)
- Q2: "[process question]" (Frame 5)
- Q3: "[comparison question]" (Frame 7)
- Q4: "[application question]" (Frame 8)
- Q5: "[causation question]" (Frame 6)
- Each answer: 40-80 words, starts with direct answer
- FAQ schema auto-generated

### Section 9: CTA
- Urgency-based CTA matching page intent
- Transactional: "Get Your Free Quote Today"
- Informational: "Have Questions? Contact Our Team"

### Section 10: Service Area
- City links grid for location pages

## SEO REQUIREMENTS
- Meta Title: [exact, under 60 chars, keyword + location + brand]
- Meta Desc: [exact, 140-160 chars, includes CTA]
- URL: /[slug] (lowercase, hyphenated)
- Canonical: [full URL]
- Schema: [types needed for this page]
- Image alt: [descriptive, keyword + location per image]
- Internal links: [min 3, to specific pages]
- External link: [1 to authority source, e.g., government site, industry body]

## INTENT SIGNALS
- If INFORMATIONAL: lead with education, FAQ depth, how-to structure
- If TRANSACTIONAL: lead with CTA, pricing, trust signals, urgency
- If COMMERCIAL: lead with comparison, reviews, "best of" structure
- Mixed: primary intent drives hero/H1, secondary intent in mid-sections

## MICRO-PAGE CONTEXT (Koray)
This page must demonstrate COMPLETE knowledge of [specific sub-topic].
It is NOT a thin page. It covers the topic so thoroughly that:
- A reader learns everything about [sub-topic] from this ONE page
- Google sees this as the DEFINITIVE resource for [keyword]
- AI search engines can extract complete answers from any section
- Every related entity is mentioned with its attributes
- The page answers the user's NEXT question before they ask it
```

**SAVE: phases/phase-04/briefs/[slug]-brief.md (one per page)**

### 4.6 BLOG CONTENT BRIEFS (Same depth, informational intent focus)
```
For each blog post:
- Target long-tail keyword from Phase 2 PASF data
- Intent: primarily informational
- Word count: 1,500-2,500 (Koray)
- 9-frame coverage for the blog topic
- Internal links: → parent service page + related blog posts
- FAQ section: 3-5 questions from PAA data
- N-grams + synonyms + LSI mapped
- Competitor gap: what existing articles miss
```

### 4.7 LOCATION PAGE BRIEFS (Same depth, unique per city)
```
For each city:
- Target: "[service] [city]" keyword
- Unique local paragraph (150+ words, mentions local landmarks/neighborhoods)
- City-specific FAQ (different answers than other cities)
- City-specific testimonial if available
- Nearby areas: different per city (not same list everywhere)
- Google Maps embed for this city
- Local schema with city-specific geo + serviceArea
```

### 4.8 PUBLICATION CALENDAR → week-by-week build order (micro first)

### 4.9 GSC CROSS-REFERENCE (If data available)
```
After briefs are created:
→ Cross-reference with GSC queries
→ If GSC shows we already rank for a term → protect that page, don't cannibalize
→ If GSC shows declining queries → add those to content refresh list
→ If GSC shows queries we rank position 8-20 → prioritize those pages (quick wins)
→ SAVE: phases/phase-04/gsc-cross-reference.md
```

### 4.10 VALIDATE → all briefs complete? all frames covered? all intents classified? → save → update memory

---

## PHASE 5: CONTENT WRITING — UC v6.4 + Semantic Optimization (10 Sub-Phases)

### 5.1 VALUE RESEARCH
→ Mine 8 sources (Reddit, Quora, PAA, forums, AI, competitors, autocomplete, Q expansion)
→ For EACH page: extract real questions people ask
→ SAVE: phases/phase-05/value-brief.md

### 5.2 TONE DNA
→ Set niche-specific voice (from Phase 7.1 archetype)
→ Define: sentence length range, formality level, vocabulary register
→ SAVE: phases/phase-05/tone-dna.md

### 5.3 WRITE SERVICE PAGES (one at a time)
```
For EACH service page:
1. READ the page's content brief from Phase 4.5
2. WRITE following the brief section by section
3. Ensure ALL 9 semantic frames covered
4. Include ALL N-grams from brief naturally (not stuffed)
5. Use synonym variations (never same term 5x in row)
6. PPR entity classification applied
7. SPO triples present
8. Match page intent (informational/transactional/commercial)
9. RankMath R1-R6 (17 checks) verified
10. Word count meets Koray minimum for page type
11. SAVE: phases/phase-05/pages/[slug].md
12. Agent shows: "Service page 3 of 6 complete. 9-frame: ✅ all covered"
```

### 5.4 WRITE MICRO-NICHE PAGES (same depth as service pages)
→ These are the MOST IMPORTANT pages (rank first)
→ Must demonstrate COMPLETE knowledge of micro-topic
→ Koray "micro-page context": everything about ONE topic on ONE page

### 5.5 WRITE BLOG POSTS
→ From Phase 4.6 blog briefs
→ Informational intent: educate thoroughly
→ Link to parent service page + related blogs
→ FAQ section from PAA data

### 5.6 WRITE LOCATION PAGES (unique per city)
→ From Phase 4.7 location briefs
→ EVERY city page has unique: intro paragraph, FAQ answers, testimonial, nearby areas
→ NOT a template with city name swapped

### 5.7 WRITE HOMEPAGE (written LAST, benefits from all other content)
→ From Phase 4.5 homepage brief
→ Comprehensive entity coverage (mentions all services, all areas)
→ Strongest trust signals

### 5.8 WRITE ABOUT + CONTACT + FAQ HUB
→ About: company story, team, credentials, E-E-A-T signals
→ Contact: all methods, map, hours
→ FAQ hub: aggregated top questions from all pages

### 5.9 GRAMMAR + QUALITY AUDIT (Per Page)
```
BEFORE passing to humanizer:
[ ] Zero spelling errors?
[ ] Zero grammar errors?
[ ] Sentences under 20 words average?
[ ] Paragraphs max 3 sentences?
[ ] No passive voice (unless intentional)?
[ ] Subject before attributes in sentences?
[ ] Facts supported with numbers or sources?
[ ] No vague quantities ("many" → "47")?
[ ] Zero em dashes?
[ ] Consistent tense throughout?
[ ] No dangling modifiers?
[ ] Transitions are contextual (not "Furthermore")?
```

### 5.10 VALIDATE ALL CONTENT
```
[ ] ALL 9 frames covered per page?
[ ] ALL N-grams from briefs included naturally?
[ ] Synonym variations used (not keyword stuffing)?
[ ] Intent matches per page (informational/transactional/commercial)?
[ ] Word counts meet Koray minimums?
[ ] RankMath 17 checks pass per page?
[ ] Internal links match Phase 4.4 map?
[ ] FAQ sections have 5+ natural questions?
[ ] Grammar audit passed?
→ SAVE all → UPDATE memory
```

---

## PHASE 6: AI HUMANIZER (5 Sub-Phases)

6.1 CALIBRATE → niche-specific human baseline (sentence length, vocabulary, formality)
6.2 SCAN → 9-vector scan per page
6.3 FIX → rewrite flagged passages, 207 banned phrases, Claude-specific patterns
6.4 GRAMMAR RECHECK → humanization didn't introduce new grammar errors?
6.5 VERIFY → re-scan all pages, confirm 80+ score, save report → update memory

---

## PHASE 7: DESIGN — Brief-First, Template-First (18 Sub-Phases)

**Flow: Collect Assets → Design Brief → Template Prompts → Preview → Approve → THEN Build**
**If Claude Code/Codex can't design well → take the brief prompt to Google AI Studio**

### 7.0 DESIGN INTAKE (Agent MUST ask ALL before designing ANYTHING)

```
Agent asks:

BRAND ASSETS:
□ "Do you have a logo? Upload it. (PNG/SVG, transparent background)"
□ "Do you have brand colors? Share hex codes."
□ "If no colors: what VIBE do you want? (modern, warm, bold, minimal, luxury, playful)"
□ "Do you have a favicon? If not, I'll create from your logo."
□ "Do you have an OG image (1200x630 for social sharing)? If not, I'll design one."

DESIGN REFERENCES:
□ "Share 2-3 websites you LIKE the design of. (any industry, just the visual feel)"
□ "Share 1-2 websites you DON'T like. (so I know what to avoid)"
□ "Any specific sections you've seen that you want? (hero style, card layout, etc.)"
□ "Screenshots welcome — upload any design reference images."

PHOTOS:
□ "Do you have team/staff photos? (real photos >> stock)"
□ "Do you have office/storefront photos?"
□ "Do you have project/work photos? (before/after, completed jobs)"
□ "If no photos: I'll use AI-generated or curated stock. Approve?"

BUSINESS:
□ "Tagline or slogan? If not, I'll suggest 3 options."
□ "Primary CTA text? ('Get Free Quote' / 'Book Consultation' / 'Call Now' / custom)"
□ "Secondary CTA? ('Call (555) 123-4567' / 'View Services' / custom)"
□ "Any trust badges? (BBB, certifications, 'Licensed & Insured', Google rating)"

Save ALL answers to: phases/phase-07/design-intake.md
```

### 7.1 BRAND IDENTITY
  → Select archetype (12 options) + anti-brief (what NOT to look like)
  → Based on intake answers, generate 3 color palette options → USER PICKS
  → Font pairing (heading + body) → USER APPROVES
  → Logo placement rules (size, clear space, dark/light variants)
  → Save: phases/phase-07/brand-identity.md

### 7.2 DESIGN TOKENS
  → globals.css (3-tier: global → alias → component)
  → tailwind.config.mjs extending tokens
  → Self-hosted fonts (woff2, font-display: swap)
  → prefers-reduced-motion rule
  → Save: phases/phase-07/design-tokens.md

### 7.3 FAVICON + OG IMAGE
  → Favicon: generate from logo (16, 32, 180, 192, 512px + SVG)
  → apple-touch-icon.png (180x180)
  → OG image: 1200x630 with business name + tagline + brand colors
  → Save all to site/public/

### 7.3B AI IMAGE PROMPTS (If Client Has No Photos)
```
Agent asks in 7.0 intake: "Do you have team/project photos?"
If NO → agent generates AI image prompts per page section.
Save: phases/phase-07/image-prompts.md

PROMPT TEMPLATE PER PAGE:

# Image Prompts: [Page Name]

## Hero Image
"A professional [business type] in [city], [specific scene 
matching the service]. Modern, clean, natural lighting. 
The [professional] is [specific action]. Background shows 
[relevant environment]. Shot at eye level, shallow depth of field. 
Warm tones matching brand palette [hex primary + hex secondary]. 
Photorealistic, not AI-looking. No text overlays. 16:9 aspect ratio."

## Service Card Images (one per service)
"Close-up of [specific service action], hands visible, 
professional tools/equipment shown. Clean background, 
well-lit workspace. Color palette: [brand colors]. 
4:3 aspect ratio, suitable for card thumbnail."

## Testimonial Avatars (if no client photos)
→ Use initials on colored circle backgrounds (DO NOT use AI faces)
→ AI faces are detectable and destroy trust
→ Better: real first initial on brand-colored circle

## About Page Team Photo
"A professional headshot-style photo of a [role description] 
in a modern [office/workspace]. Business casual attire. 
Friendly, confident expression. Clean neutral background. 
Soft studio lighting. Chest-up framing."
→ ⚠️ NOTE: ALWAYS tell client these are AI-generated
→ Replace with real photos ASAP for E-E-A-T

## Project/Work Photos
"A completed [project type] in a [location type]. 
Before state: [describe problem]. After state: [describe result]. 
Split view showing transformation. Well-lit, wide angle."

RULES:
- Generate prompts for Midjourney/DALL-E/Ideogram
- NEVER use AI-generated faces for testimonials (use initials)
- ALWAYS disclose AI images to client
- REPLACE with real photos within 30 days of launch
- Each prompt matches brand colors and archetype mood
- Save ALL prompts so client can regenerate if needed
```

### 7.4 HOMEPAGE DESIGN BRIEF (Detailed Prompt)

**Agent generates THIS prompt, saves it, user can take to ANY AI tool:**

```markdown
# Homepage Design Brief: [Business Name]

## Visual References
- Like: [URL 1 — what specifically: their hero, cards, colors]
- Like: [URL 2 — what specifically]  
- Avoid: [URL — what specifically: too cluttered, too dark, etc.]

## Brand
- Logo: [uploaded/text-based]
- Colors: Primary [hex], Secondary [hex], Accent [hex], BG [hex]
- Fonts: Heading [name], Body [name]
- Archetype: [e.g., "Sage/Caregiver — trustworthy, warm, professional"]
- Anti-brief: NOT [luxury/techy/playful/corporate — whatever doesn't fit]

## Page Sections (Top to Bottom):

### Section 1: HEADER (sticky)
- Desktop: logo left, nav center, phone + CTA button right
- Mobile: logo left, hamburger right, sticky bar bottom (phone + CTA)
- Nav items: Home, Services dropdown, About, Contact, [Call CTA]
- Background: [primary dark color]
- CTA button: [accent color], text: "[primary CTA text]"

### Section 2: HERO
- Layout: split (text left 60%, image right 40%) OR full-width image with overlay
- Background: [dark gradient] OR [hero image with dark overlay 60%]
- Headline: H1, [text-5xl bold], white, max 8 words
  Content: "[exact headline from Phase 5 content]"
- Subheadline: [text-lg], white/80% opacity, 1-2 sentences
  Content: "[exact subheadline from Phase 5]"
- Primary CTA: [accent color] button, large (px-8 py-4), rounded-xl
  Text: "[Get Free Quote / Book Consultation]"
- Secondary CTA: white outline button or phone number
  Text: "Call [phone number]"
- Trust bar below hero: horizontal strip, slightly darker bg
  Content: "[X]+ Clients | [Certification] | [Rating] ★ | [Years] Years"
  Icons: Lucide icons for each item

### Section 3: PROBLEM/PAIN POINTS
- Background: white
- Heading: H2 question format, centered
- Layout: 3-4 cards in grid (md:grid-cols-2 lg:grid-cols-4)
- Each card: Lucide icon (40px, primary color) + bold title + 2-line description
- Cards: white bg, border, rounded-xl, shadow on hover, lift animation
- Spacing: py-20 section padding

### Section 4: SERVICES
- Background: gray-50 (alternating)
- Heading: H2, left-aligned or centered
- Layout: 2x3 grid of service cards
- Each card: 
  - Image top (service-related, rounded-t-xl, 200px height, object-cover)
  - Padding p-6
  - Lucide icon (24px) + Service name (text-xl bold)
  - 2-line description
  - "Learn More →" link in primary color
- Hover: shadow-lg + translateY(-4px)

### Section 5: WHY CHOOSE US / STATS
- Background: primary dark (navy/dark blue)
- Layout: 3-4 stats in row
- Each stat: large number (text-4xl bold, accent color) + label below (white)
- Examples: "500+" "15 Years" "$5K Avg Savings" "4.9 ★"
- Decorative: subtle pattern or gradient overlay

### Section 6: TESTIMONIALS  
- Background: white
- Heading: H2
- Layout: 3 cards in row (stack on mobile)
- Each card: ★★★★★ (5 gold stars) + quote text (italic) + name + service used
- Photo: circle avatar (48px) if available, initials circle if not
- Cards: white bg, border-l-4 [accent color], shadow-sm

### Section 7: FAQ ACCORDION
- Background: gray-50
- Heading: H2 (question format)
- 5-7 questions, accordion style
- Closed: question + chevron-down icon
- Open: question + chevron-up + answer text
- Smooth transition (max-height animation)
- React island (client:visible)

### Section 8: SERVICE AREA
- Background: white
- Heading: H2 "Serving [City] and Surrounding Areas"
- Grid of city links (3-4 columns)
- Each city: link to location page, hover underline

### Section 9: CTA BANNER
- Background: primary color (full-width)
- Heading: "Ready to [action]?" (text-3xl, white, bold)
- Subtext: 1 sentence (white/80%)
- Large CTA button (accent color) + phone number
- "No obligation" trust text below button

### Section 10: CONTACT FORM
- Background: gray-50
- Layout: split (form left 60%, business info right 40%)
- Form: name, email, phone, service dropdown, message textarea, submit button
- Business info: address, phone, email, hours, small map
- Submit button: full-width, primary color, "Send Request"

### Section 11: FOOTER
- Background: secondary dark (darker than header)
- 4 columns: About + Quick Links + Services + Contact Info
- Bottom bar: copyright + privacy + terms links
- NAP visible and matching schema

## Component Specifications:
- Border radius: 12px on cards, 8px on buttons, full on avatars
- Shadows: shadow-sm default, shadow-lg on hover
- Transitions: 250ms ease on all interactive elements
- Max content width: 1280px centered
- Section padding: py-20 (80px top/bottom)
- Responsive: stack to single column below 768px
- Font sizes: H1 text-5xl, H2 text-3xl, body text-base/lg

## What This Page Must Feel Like:
[Based on archetype — e.g., "Professional but approachable. Like walking into 
a clean, modern office where someone greets you by name. Not corporate-cold, 
not overly casual. Confident without being arrogant."]
```

**Save to: phases/phase-07/homepage-brief.md**
**User reviews brief → approves → agent builds OR user takes to Google AI Studio**

### 7.5-7.8 TEMPLATE BRIEFS (Same detail level for each)

**Each template gets its OWN brief with same detail level as 7.4:**

7.5 SERVICE PAGE BRIEF
  → Same format: section-by-section, exact layout, spacing, colors, components
  → Unique sections: process steps (numbered), related services sidebar, service-specific FAQ
  → Save: phases/phase-07/service-page-brief.md

7.6 LOCATION PAGE BRIEF
  → Unique sections: city hero, services available here, local paragraph, Google Map, nearby areas
  → Save: phases/phase-07/location-page-brief.md

7.7 BLOG POST BRIEF
  → Unique sections: hero image, author bio, TOC sidebar, reading time, related posts
  → Save: phases/phase-07/blog-post-brief.md

7.8 CONTACT PAGE BRIEF
  → Unique sections: large form, multiple contact methods, map, hours, directions
  → Save: phases/phase-07/contact-page-brief.md

7.9 ABOUT PAGE BRIEF
  → Unique sections: team photos, company story timeline, certifications grid, values
  → Save: phases/phase-07/about-page-brief.md

### 7.10 LOCAL BUSINESS ELEMENTS BRIEF (All Components)

```markdown
# Component Design Brief: Local Business Elements

## Contact Form
- Fields: name (required), email (required), phone (required), 
  service dropdown (from services list), message textarea
- Hidden: honeypot field (position: absolute, left: -9999px)
- reCAPTCHA v3 (invisible, no checkbox)
- Submit: full-width button, primary color, "Send Request"
- Success state: green checkmark + "Thanks! We'll call within 2 hours."
- Error state: red border on invalid fields + inline error messages
- Loading state: spinner on button, disabled while submitting

## Click-to-Call
- Desktop: phone number visible in header, styled as link
- Mobile: sticky bar at bottom (60px height, z-50)
  Left: phone icon + "Call Now" 
  Right: "Free Quote" button (accent color)
- Format: (555) 123-4567 (not +1-555...)

## WhatsApp Chat Widget
- Floating circle button, bottom-right, 56px
- Color: WhatsApp green #25D366
- Icon: WhatsApp logo (SVG)
- Position: right: 20px, bottom: 80px (above sticky CTA on mobile)
- Lazy load: appears after 5 seconds OR 50% scroll
- Click: opens wa.me/[number]?text=Hi, I'm interested in your services
- Dismiss: small X button on hover/tap
- DO NOT load WhatsApp SDK (just a link, zero JS cost)

## Google Maps
- Responsive iframe (width: 100%, aspect-ratio: 16/9)
- Lazy load: loading="lazy" on iframe
- Rounded corners matching card radius
- Shown on: contact page (large), location pages (medium), footer (small)

## Popup/Modal
- Trigger: exit intent (mouseleave on desktop) OR 30 seconds timer (mobile)
- Frequency: once per session (localStorage check)
- Content: headline + 1 sentence + form (name, phone, email) + close button
- Overlay: dark bg with 60% opacity
- Close: X button top-right + click outside + Escape key
- Design: centered, max-width 500px, white bg, brand colors
- DO NOT show on mobile if sticky CTA already visible (avoid double interruption)

## Trust Badges Bar
- Horizontal strip, typically below hero or above footer
- Content: 4 items in row (stack 2x2 on mobile)
- Each: Lucide icon + text ("Licensed & Insured", "500+ Clients", "4.9 ★", "20+ Years")
- Background: slightly different shade from surrounding section
- Text: small (text-sm), muted color

## Testimonial Card
- Star rating: 5 gold stars (★★★★★) using Lucide Star icon, fill amber-400
- Quote: italic, text-gray-700, 2-4 sentences max
- Name: bold, text-gray-900
- Service: text-sm, text-gray-500 ("Bathroom Remodeling")
- Avatar: 48px circle, if photo available show photo, else show initials on colored bg
- Card: white bg, border-l-4 accent color, rounded-xl, shadow-sm

## FAQ Accordion (React Island)
- client:visible (only loads when scrolled into view)
- Question: text-lg font-semibold, flex between text and chevron icon
- Answer: text-base text-gray-600, smooth max-height transition (300ms)
- Divider: thin border between items
- First item: open by default
- Auto-generate FAQPage schema JSON-LD from FAQ data

## Breadcrumbs
- Position: below header, above hero
- Format: Home > Services > [Service Name]
- Separator: "/" or ">" in text-gray-400
- Current page: text-gray-900, no link
- Auto-generate BreadcrumbList schema

## Cookie Consent
- Position: bottom of screen, full-width bar
- Two buttons: "Reject" (outline) + "Accept" (filled primary)
- Text: "We use cookies to analyze traffic. [Privacy Policy] link"
- Stores preference in localStorage
- If rejected: don't load GA4/GTM/Clarity
- React island (client:idle — loads last, lowest priority)

## Back to Top
- Appears: after 50% scroll
- Position: bottom-right, above WhatsApp if present (bottom: 140px)
- Icon: Lucide ArrowUp in circle
- Size: 44px (touch target compliant)
- Smooth scroll to top on click
- Transition: fade in/out
```

**Save: phases/phase-07/local-elements-brief.md**

### 7.11 HEADER + FOOTER BRIEF (Same detail)
### 7.12 ERROR PAGES BRIEF (404 + 500)

### 7.13 BUILD PREVIEWS
  → Agent builds EACH template as standalone HTML preview
  → User reviews on browser → approves or requests changes
  → If user doesn't like → user takes the BRIEF .md to Google AI Studio
  → Google AI Studio generates design from the detailed brief
  → User provides screenshot of approved design → agent matches in Astro

### 7.14 VALIDATE ALL TEMPLATES
  → All templates approved?
  → All briefs saved as .md?
  → Design tokens used in all previews?
  → Mobile responsive tested?
  → Save: phases/phase-07/checklist.md → UPDATE memory

---

## PHASE 8: BUILD — Astro 6 (10 Sub-Phases)

**Only after ALL templates approved in Phase 7.**

8.1 PROJECT INIT → create-astro, install integrations, Content Collections, git init
8.2 GLOBAL LAYOUT → BaseLayout, Header, MobileNav, Footer, StickyMobileCTA → git commit
8.3 HOMEPAGE → from approved 7.3 template + Phase 5 content + schema → git commit
8.4 SERVICE PAGES → loop, one at a time, from 7.4 template → git commit each
8.5 LOCATION PAGES → loop, unique content per city, from 7.5 template → git commit batch
8.6 BLOG POSTS → from 7.6 template → git commit
8.7 REMAINING PAGES → about, contact, FAQ hub, legal, error pages → git commit
8.8 LOCAL ELEMENTS → all from 7.8 (forms, WhatsApp, maps, popup, cookie) → git commit
8.9 CONTEXTUAL INTERNAL LINKING → verify ALL links match Phase 4.3 map → git commit
8.10 VALIDATE BUILD → all renders, all links work, all forms submit → save → update memory

---

## PHASE 9: TECHNICAL + ON-PAGE SEO AUDIT (15 Sub-Phases)
### (From /seo-master-agent-v2 + /seo-audit)

=== ON-PAGE ===
9.1 META TAGS → title unique <60, desc unique 140-160, no duplicates
9.2 HEADINGS → one H1 per page, 50%+ H2 questions, no skips, extractive answers
9.3 CONTENT QUALITY → keyword in first 100 words, density 1-2%, zero em dashes, zero AI phrases, word count meets Koray
9.4 IMAGE SEO → alt text descriptive, filenames keyword-rich, WebP, eager/lazy correct, width+height set
9.5 URL STRUCTURE → lowercase, hyphenated, keyword-rich, under 75 chars
9.6 INTERNAL LINKS → min 3 per page, contextual anchor, no orphans, max 3 clicks

=== TECHNICAL ===
9.7 CRAWLABILITY → sitemap generated, robots.txt correct, AI crawlers, no blocked pages
9.8 INDEXATION → canonicals set, no duplicate content, noindex on utility pages, location pages unique
9.9 SCHEMA → LocalBusiness, Service, FAQ, Breadcrumb, Organization, Article — ALL validate in Google Rich Results Test
9.10 PERFORMANCE → Lighthouse 95+ mobile, LCP <2.0s, CLS=0, INP <100ms, TTFB <200ms, page <300KB
9.11 MOBILE → 5 breakpoints tested, no horizontal scroll, 44px targets, sticky CTA works
9.12 SECURITY → HTTPS, security headers (CSP, HSTS, X-Frame, X-Content-Type)
9.13 ACCESSIBILITY → WCAG 2.1 AA, contrast 4.5:1, alt text, labels, keyboard nav, focus, reduced-motion
9.14 SOCIAL → OG tags, Twitter cards, OG image 1200x630
9.15 VALIDATE ALL → fix every issue → git commit each fix → save report → update memory

---

## PHASE 10: LEGAL + ANALYTICS + INDEXING (8 Sub-Phases)

10.1 Privacy Policy (GDPR+CCPA+PIPEDA)
10.2 Terms + Cookie Policy + Industry Disclaimer
10.3 Cookie consent banner (Reject+Accept)
10.4 GA4 + GTM + Consent Mode v2
10.5 Conversion events (form, phone, CTA, scroll)
10.6 Enhanced Conversions + Microsoft Clarity
10.7 llms.txt + IndexNow API + sitemap submission to GSC+Bing
10.8 GBP 14-section optimization + NAP consistency + citations (50+)
→ save → update memory

---

## PHASE 11: PRE-LAUNCH + DEPLOY (10 Sub-Phases)

11.1 100-POINT CHECKLIST (7 gates: Build, SEO, Responsive, A11y, Performance, Content, Business)
11.2 AUTO-FIX failures (priority order)
11.3 RE-CHECK until ZERO failures
11.4 GIT PUSH → git add . && git commit -m "release: v1.0.0" && git push origin main
11.5 VERCEL DEPLOY → connect repo, framework=Astro, build=npm run build, output=dist
11.6 DOMAIN CONNECT → add domain in Vercel, update DNS, verify SSL, force HTTPS, www redirect
11.7 CACHE WARMING → visit every page, run Lighthouse on live domain
11.8 SEARCH SUBMISSION → GSC sitemap, Bing sitemap, URL Inspection top 10, IndexNow all URLs
11.9 BUSINESS EMAIL → create info@domain, SPF+DKIM+DMARC, test form delivery
11.10 VALIDATE LAUNCH → site live, SSL, forms, analytics, all working → save → update memory

### 11.11 CLIENT HANDOFF + TRAINING
```
DELIVERABLES TO CLIENT:

1. LOOM VIDEO (10-15 min walkthrough):
   → How to edit text on any page (show Vercel CMS or direct file edit)
   → How to add a new blog post
   → How to update images
   → How to check contact form submissions
   → How to view Google Analytics dashboard
   → How to respond to Google Reviews
   → What NOT to touch (code files, config, schema)

2. ADMIN GUIDE (phases/phase-11/client-guide.md):
   → All login credentials list:
     - Vercel dashboard URL + login
     - Google Analytics (GA4) access
     - Google Search Console access
     - Google Business Profile access
     - Bing Webmaster Tools access
     - Domain registrar login
     - Business email login
     - Microsoft Clarity access
   → How to edit content (step-by-step with screenshots)
   → How to add a blog post
   → How to update business hours
   → Emergency contact (your email/phone for urgent issues)

3. ASSET HANDOFF:
   → All design files (tokens, fonts, brand guide)
   → All original images (full resolution)
   → Content source files (all .md pages)
   → Git repository access (if client wants)
   → AI image prompts file (so they can regenerate)

4. MAINTENANCE OPTIONS:
   → Option A: client self-manages (guide provided)
   → Option B: monthly retainer ($X/month for updates, monitoring, content)
   → Option C: quarterly check-in (re-audit every 3 months)

5. 30-DAY SUPPORT:
   → 30 days free support after launch
   → Bug fixes included
   → Content change requests (reasonable, 2-3 per week)
   → After 30 days: retainer or per-task pricing

Save: phases/phase-11/client-handoff.md
```

---

## PHASE 12: POST-LAUNCH INSPECTION + GROWTH (10 Sub-Phases)

=== IMMEDIATE (Day 1-7) ===
12.1 LIVE INSPECTION → open every page on real mobile, test all forms, phone links, WhatsApp, maps, cookie banner, popup
12.2 GSC CHECK → crawl errors, indexing issues, sitemap status, mobile usability, CWV
12.3 MONITORING SETUP → UptimeRobot 5-min, GA4 events verify, Clarity recording

=== WEEK 2-4 ===
12.4 RANKING BASELINE → record positions for top 20 keywords in GSC
12.5 CONTENT PUBLISHING → 2-4 blog posts/month, internal links, IndexNow submit, git+vercel auto-deploy
12.6 REVIEW COLLECTION → Google Review shortlink, respond within 24hrs, target 2-4/month

=== MONTH 2-3 ===
12.7 RANKING REVIEW → compare vs baseline, micro-niches ranking? fix cannibalization
12.8 CONTENT REFRESH → update stats, add FAQs from GSC queries, refresh testimonials

=== MONTH 6 ===
12.9 FULL RE-AUDIT → re-run Phase 9 (all 15 sub-audits), compare scores vs launch
12.10 GROWTH PLAN → new services? new cities? new blog topics? competitor changes? → save → update memory

### 12.11 12-MONTH CONTENT CALENDAR
```
Save: phases/phase-12/12-month-calendar.md

MONTH 1 (Launch month):
- Week 1: Site live + all core pages
- Week 2: Blog #1 + Blog #2 (from Phase 4 briefs)
- Week 3: Blog #3 + first GBP post
- Week 4: Blog #4 + social media profiles live
- GBP: 1 post per week (offer, update, or tip)

MONTH 2:
- 4 blog posts (target PASF long-tail keywords)
- 2 GBP posts
- Respond to all reviews
- Share 2 blog posts on social media
- Check: micro-niche pages indexing?

MONTH 3:
- 4 blog posts (target competitor gap keywords)
- Update 2 service pages with new stats/testimonials
- Add 1-2 new FAQ questions per service page (from GSC query data)
- First content performance review (which blogs getting traffic?)
- GBP: 1 post per week

MONTH 4-6:
- 3-4 blog posts per month
- Monthly GBP posts
- Quarterly service page refresh (update stats, add new reviews)
- Month 6: FULL RE-AUDIT (Phase 12.9)
- Identify: new location pages needed? new service pages?

MONTH 7-9:
- Add 3-5 NEW location pages (expand service area)
- Add 1-2 NEW service pages (based on competitor gap analysis)
- 3-4 blog posts per month targeting new keyword opportunities
- Create comparison/commercial pages ("[Service] vs [Alternative]")
- Update all testimonials with newest reviews

MONTH 10-12:
- Full competitor re-analysis (Phase 1 rerun)
- Refresh ALL content briefs with new GSC data
- Update 12-month calendar for Year 2
- Create annual performance report:
  → Total organic traffic growth
  → Keyword positions (top 20 tracked)
  → Leads generated (form + phone)
  → Revenue attributed to website
  → Pages indexed
  → Domain authority growth

CONTENT TYPE MIX:
→ 60% Informational (how-to, guides, FAQ, educational)
→ 25% Commercial (comparisons, reviews, best-of)
→ 15% Transactional (pricing updates, new service pages, CTAs)

SEASONAL CONTENT (varies by business):
→ Accountant: Jan-Apr tax season content surge
→ Plumber/HVAC: seasonal maintenance guides
→ Landscaping: spring/fall seasonal content
→ Wedding: Jan-Mar engagement season content
→ Restaurant: holiday/seasonal menu content
→ Roofing: storm season preparedness content
→ Agent identifies seasonal patterns for THIS business and pre-plans content

EVERY BLOG POST MUST:
→ Target a keyword from Phase 2 research
→ Internal link to relevant service page
→ Internal link to relevant location page
→ Have FAQ section (3-5 questions)
→ Have schema (Article + FAQ)
→ Submit via IndexNow after publish
→ Git commit + Vercel auto-deploy
```

---

## RANKING TIMELINE
```
Month 1: Live, indexed, GBP verified, monitoring active
Month 2: Micro-niche pages ranking (page 2-3)
Month 3: Micro pages page 1. Location pages ranking.
Month 4: Hub/service pages page 1-2. Blog ranking.
Month 5: Homepage top 20.
Month 6-8: Homepage page 1. Full re-audit + growth plan.
Month 9-12: Dominating local SERPs. Expand service areas.
```

---

## AGENT RULES
```
1. READ PROJECT-MEMORY.md FIRST every session
2. PLAN before every sub-phase → ask approval
3. EXECUTE only after approval
4. SAVE as .md in correct phases/ folder
5. VALIDATE → if fail → FIX → re-check → NEVER proceed until pass
6. UPDATE memory after every sub-phase
7. Git commit after every build sub-phase
8. NEVER fake data. NEVER skip sub-phases. NEVER proceed on failure.
9. Show: "Phase 8.4: Building service page 3 of 6"
10. Suggest: "Competitor has [X]. Add it?"
```
