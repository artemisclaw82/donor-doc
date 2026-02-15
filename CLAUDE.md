# CLAUDE.md — SEAL Donor Document

## Project
HTML-based donor/sponsorship document for Security Alliance (SEAL). Compiles to PDF via Puppeteer.

## Stack
- Single `donor_doc.html` file with inline CSS
- `generate-pdf.js` uses Puppeteer to render HTML → PDF (A4, zero margins)
- Custom font: TT Hoves Pro (in `tt-hoves-pro/`)
- Logos/badges in `logos/`

## Design Constraints
- A4 page size (210mm × 297mm)
- Each `.page` div = exactly one printed page (overflow: hidden)
- Print-ready: use `pt` for typography, `mm` for page dimensions
- Brand colors: `--seal: #4339db`, `--seal-light: #6360e4`, white: `#fefefe`
- Font: TT Hoves Pro at weights 300, 400, 500, 600

## Commands
- Preview: `npx serve -l 3000` then open `http://localhost:3000/donor_doc.html`
- Generate PDF: `node generate-pdf.js`
- Screenshot pages: use Puppeteer to screenshot each `.page` element

## Rules
- Keep all CSS inline in the HTML file (single-file design)
- Don't change the SVG logo or image assets
- Keep the 3-page structure (Cover, Why SEAL, Sponsorship Tiers)
- All content text should remain the same — this is a design polish, not a content rewrite
- Test by generating PDF after changes
