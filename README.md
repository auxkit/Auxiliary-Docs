# Auxiliary-Docs

A repository for auxiliary documentation using Docsify.

## Overview

This repository contains supplementary documentation that can be viewed through Docsify and exported to PDF format. It serves as a centralized location for reference materials and guides.

## Features

- Documentation organized with a sidebar navigation
- PDF export capability
- Clean, searchable documentation interface

## Usage

### Viewing Documentation

To view the documentation locally:

```bash
npx docsify-cli serve docs
```

Then visit `http://localhost:3000` in your browser.

(This requires installing the docsify cli on your computer. See Docsify documentation for more info)

### Exporting to PDF

The documentation can be exported to PDF using:

```bash
npm run convert
```

The generated PDF will be stored at `pdf/docs.pdf`.

## Structure

- `/docs` - Documentation source files
- `/pdf` - Generated PDF output
