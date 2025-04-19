module.exports = {
  contents: ['docs/**/*.md'],  // Files to include
  pathToPublic: 'docs',        // Path to static files
  outFile: 'pdf/docs.pdf',     // Output file
  puppeteerLaunchOptions: {
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  },
  renderDelay: 3000,           // Increase delay to give time for Mermaid to render
  pdfOptions: {
    printBackground: true,
    margin: {
      top: '20mm',
      right: '20mm',
      bottom: '20mm',
      left: '20mm',
    }
  }
}
