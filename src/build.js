const fs = require("fs");
const path = require("path");
const { minifyHTML, header, footer, viewRoot, distRoot } = require("./utils");

function main() {
  // clean output directory
  fs.rmdirSync(distRoot, { recursive: true });
  fs.mkdirSync(distRoot);

  const templates = fs.readdirSync(viewRoot).filter((f) => f.endsWith(".ftlh"));
  templates.forEach((template) => {
    const html =
      header + fs.readFileSync(path.join(viewRoot, template)) + footer;
    const outFile = path.join(distRoot, template);
    fs.writeFileSync(outFile, minifyHTML(html));
  });
}

main();
