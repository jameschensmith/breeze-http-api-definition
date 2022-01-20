const fs = require("fs");

const yaml = require("js-yaml");

// Get document, or throw exception on error
try {
  const redocly = yaml.load(fs.readFileSync(".redocly.yml", "utf8"));
  const docsConfig = redocly.referenceDocs;
  fs.writeFileSync(".redoc.json", JSON.stringify(docsConfig, null, 2) || "{}");
} catch (e) {
  console.log(e);
}
