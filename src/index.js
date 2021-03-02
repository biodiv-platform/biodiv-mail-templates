const fastify = require("fastify");
const { header, footer, listTemplates, renderTemplate } = require("./utils");

const app = fastify();

app.get("/", async (_req, reply) => {
  const html = listTemplates();

  reply.header("Content-Type", "text/html; charset=utf-8").send(html);
});

app.get("/template", async (req, reply) => {
  const html = await renderTemplate(req.query.t);
  reply
    .header("Content-Type", "text/html; charset=utf-8")
    .send(header + html + footer);
});

app.listen(3000).then(() => {
  console.log("Server running at http://localhost:3000/");
});
