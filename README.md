# Auxiliary-Docs

A repository for auxiliary documentation using Docsify.

## Overview

This repository contains supplementary documentation that can be viewed through Docsify and exported to PDF format. It serves as a centralized location for reference materials and guides.

## Features

- Documentation organized with a sidebar navigation
- PDF export capability
- Clean, searchable documentation interface

## Setup

1. Clone this repository
2. Install dependencies:

```bash
npm install
```

## Usage

### Viewing Documentation

To view the documentation locally:

```bash
npx docsify-cli serve docs
```

Then visit `http://localhost:3000` in your browser.

### Exporting to PDF

The documentation can be exported to PDF using:

```bash
npm run convert
```

The generated PDF will be stored at `pdf/docs.pdf`.

## Structure

- `/docs` - Documentation source files
- `/pdf` - Generated PDF output
