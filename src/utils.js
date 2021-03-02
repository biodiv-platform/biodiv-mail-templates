const freemarker = require("freemarker.js");
const fs = require("fs");
const path = require("path");

const viewRoot = path.join(__dirname, "../template");
const distRoot = path.join(__dirname, "../dist");
const previewRoot = path.join(__dirname, "../preview");
const fm = new freemarker({ viewRoot });

const header = fs.readFileSync(path.join(viewRoot, `includes/header.html`));
const footer = fs.readFileSync(path.join(viewRoot, `includes/footer.html`));

const renderTemplate = (template) => {
  const payload = JSON.parse(
    fs.readFileSync(path.join(viewRoot, `${template}.json`))
  );

  return new Promise((success, failure) => {
    fm.render(template, payload, function (err, html) {
      if (err) {
        console.error(err);
        failure(err);
      }
      success(html);
    });
  });
};

function listTemplates() {
  const fileNames = fs
    .readdirSync(viewRoot)
    .filter((f) => f.endsWith(".ftlh"))
    .map((f) => `<li><a href="/template?t=${f}">${f}</a></li>`)
    .join("");

  return `<h1>Templates</h1><ol>${fileNames}</ol>`;
}

function minifyHTML(s) {
  return s
    .replace(/\>[\r\n ]+\</g, "><")
    .replace(/(<.*?>)|\s+/g, (m, $1) => ($1 ? $1 : " "))
    .trim();
}

module.exports = {
  header,
  footer,
  viewRoot,
  distRoot,
  previewRoot,
  renderTemplate,
  listTemplates,
  minifyHTML,
};
