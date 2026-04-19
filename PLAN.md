# Plan: Hepatobiliary Surgical Oncology Website

## Context
- Dr. Camilo Correa, MD — hepatobiliary surgical oncologist, Mount Sinai NYC
- Plain HTML/CSS, GitHub Pages (vincrito.github.io), no build tools
- Goals: patient education, video library, referring provider hub, SEO/LLM discoverability

## Completed Work
- ✅ Cholangiocarcinoma page: biliary drainage language updated — percutaneous drainage preferred for hilar disease; multidisciplinary surgical involvement required before any drainage procedure; risks of wrong-side/incomplete drainage noted throughout (diagnostic list, highlight strip, FAQ, hilar surgery card)
- ✅ Shared design system (styles.css) + all pages rebuilt
- ✅ Home link added to navbar on all pages (not index.html)
- ✅ Open Graph meta tags added to all pages
- ✅ Google Analytics G-2CFF7L2J65 added to all pages
- ✅ Old blog.html + blog/ deleted; replaced by resources/
- ✅ .gitignore created (excludes *.docx, *.doc, *.pdf)
- ✅ conditions/pancreatic-cancer.html fully rebuilt as comprehensive patient guide (16 sections with TOC, sourced from Pancan_Ebook_FINAL.docx)
- ✅ Pancreatic cancer page refined section by section (single-column layouts, left-border style, trimmed content)
- ✅ Sticky TOC pill bar + back-to-top button added to pancreatic cancer page
- ✅ Surgery detail pages created: whipple-procedure.html, distal-pancreatectomy.html, total-pancreatectomy.html (with inline expand toggles + full page links)
- ✅ Figures added to pancreatic cancer page: normal anatomy, EUS-FNA, ERCP, cancer locations/resectability
- ✅ images/ folder created; all figures stored there with URL-safe filenames
- ✅ Inline consultation buttons removed from overview cards on all condition pages
- ✅ SPN added to cyst types on pancreatic-cysts.html
- ✅ Publications section added to about.html (23 papers, 4 disease areas, PubMed links)
- ✅ Resectability blurb added to pancreatic cancer staging section

## Decisions
- Design: Elevated/premium medical branding (not just the current minimal look)
- Videos: YouTube embeds (youtube-nocookie.com)
- Referring: Full dedicated page — clinical criteria, phone/fax, insurance, turnaround + downloadable form
- Conditions: all 7 (pancreatic cancer, cysts, liver tumors, gallbladder, bile duct, gastric/upper GI, second opinions)
- SEO target: both patients AND referring providers
- Tech: stay plain HTML/CSS, shared external stylesheet (styles.css)
- Contact form: Formspree (change action= attribute only, no JS/server needed)
- Blog renamed to "Patient Resources" — moved to /resources/ (option A confirmed)
- Video page: "Coming Soon" placeholder — structure and category layout in place, no embeds yet

## Target File Structure
```
index.html
about.html
styles.css              ← shared design system
conditions/
  index.html
  pancreatic-cancer.html
  pancreatic-cysts.html
  liver-tumors.html
  gallbladder-cancer.html
  bile-duct-cancer.html
  gastric-upper-gi.html
  second-opinions.html
videos.html             ← coming soon placeholder
for-patients.html
for-referring-providers.html
resources/
  index.html            ← was blog.html
  post1.html            ← was blog/post1.html
contact.html
sitemap.xml
robots.txt
```

## Plan

### Phase 1: Foundation — Design System
1. Create `styles.css` — shared design system: deep navy (#0f2340) + refined blue (#1a5fa8) palette, Inter via Google Fonts, reusable nav, footer, card, hero, condition-card, CTA button, breadcrumb components
2. Refactor `index.html` — link to styles.css, premium hero redesign (headshot + credentials + dual CTA), featured conditions grid, patient education teaser, referring provider teaser, structured data (JSON-LD Physician schema), full meta/OG tags
3. Refactor `about.html` — shared nav/footer, full bio narrative, credentials/training/affiliations sections, philosophy section
4. Move blog.html → resources/index.html, blog/post1.html → resources/post1.html; update all internal links; apply shared styling

### Phase 2: Content Pages (steps 5-9 can run in parallel)
5. Create `conditions/index.html` — overview hub with 7 condition cards, short descriptions, SEO-targeted headings
6. Create all 7 condition pages — each with: what it is, symptoms, diagnosis, when surgery is appropriate, what to expect, FAQ section (FAQ schema markup), CTA to contact/refer
7. Create `videos.html` — "Coming Soon" page with category sections laid out (conditions, procedures, patient prep), placeholder cards, no embeds yet
8. Create `for-patients.html` — what to expect at first visit, how to prepare, common questions, link to condition pages, FAQ
9. Create `for-referring-providers.html` — clinical criteria by condition, how to refer (phone/fax/MyChart), accepted insurance, typical turnaround time, downloadable referral form (PDF link placeholder), direct contact block

### Phase 3: SEO & Discoverability
10. Add JSON-LD structured data: Physician + MedicalOrganization schema on index.html; FAQPage schema on each condition page; BreadcrumbList on all pages
11. Add `<meta name="description">` + Open Graph tags to all pages (patient-targeted and provider-targeted variants)
12. Create `sitemap.xml` with all pages and lastmod dates
13. Create `robots.txt` pointing to sitemap

## Known Bugs
- ✅ EUS/ERCP images: flex-wrap:wrap added — stack below text on mobile, side-by-side on desktop

## Pending Assets
- ⬜ Total pancreatectomy figure (no image yet — placeholder page live)
- ⬜ Cancer locations: need 4 separate unlabeled images (resectable, borderline, unresectable, metastatic) to replace current 4-panel labeled composite

## Next Steps (Priority Order)
1. ~~**Analytics**~~ ✅ Done
2. ~~**Expanded pancreatic cancer page**~~ ✅ Done
3. **Expanded pages for other diagnoses** — Use pancreatic cancer page as template; shared sections (mediports, recovery, chemo) reused as blocks
4. **Site search** — Discuss adding search bar and function across the site (options: client-side JS index, Pagefind, Google CSE)
5. **Glossary + hover tooltips** — `/glossary.html` + CSS/JS tooltip on tagged terms site-wide; do after content is finalized
6. ~~**Publications page**~~ ✅ Done — added as section on about.html; 23 papers across 4 disease areas, each linked to PubMed; "View full list on PubMed" links top and bottom
7. **Residents page** — `/residents/index.html`, no nav link, blocked in robots.txt; decide on JS password gate vs. unlisted-only
8. **Spanish translation** — `/es/` directory mirroring full site, `hreflang` tags, language toggle in nav; do LAST after all English content is final
9. **Referral PDF** — Downloadable form for referring providers page (Dr. Correa to supply content)
10. **Sitemap + robots.txt refresh** — Update as new pages are added

### Residents page decision
- Pending: password gate (simple JS, not cryptographically secure) vs. unlisted URL only

## Verification
1. Validate JSON-LD with Google Rich Results Test on index.html and a condition page
2. Check mobile responsiveness on index, conditions, and referring page
3. Verify all nav links resolve correctly (no broken hrefs)
4. Confirm YouTube embeds use privacy-enhanced mode (youtube-nocookie.com) when videos are added
5. Run Lighthouse audit — target 90+ Performance, 100 Accessibility, 100 SEO
6. Test fax/phone/contact links on mobile (tel: and mailto: work)
7. Formspree form submits and delivers to email (after action= is set with real ID)
