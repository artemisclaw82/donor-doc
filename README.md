# SEAL Donor Document

An HTML-based donor document for Security Alliance, compiled to PDF via Puppeteer.

## Prerequisites

- Node.js 20+
- npm

## Setup

```bash
npm install
```

## Preview

Open `donor_doc.html` directly in a browser, or serve it locally:

```bash
npx serve -l 3000
# Then open http://localhost:3000/donor_doc.html
```

## Generate PDF

```bash
node generate-pdf.js
# or
npm run build
```

This produces `donor_doc.pdf` in the repo root.

## CI/CD

On every push, GitHub Actions automatically compiles the HTML to PDF and commits the result back to the repository.
