const fs = require("fs");
const path = require("path");
const {
  header,
  footer,
  viewRoot,
  previewRoot,
  renderTemplate,
} = require("./utils");

function main() {
  // clean output directory
  fs.rmdirSync(previewRoot, { recursive: true });
  fs.mkdirSync(previewRoot);

  const templates = fs.readdirSync(viewRoot).filter((f) => f.endsWith(".ftlh"));
  templates.forEach(async (template) => {
    const html = header + (await renderTemplate(template)) + footer;
    const outFile = path.join(previewRoot, `${template}.html`);
    fs.writeFileSync(outFile, html);
  });
}

main();
